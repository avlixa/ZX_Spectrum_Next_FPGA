/*
ZX Spectrum Next Project
Copyright 2022 Alvin Albrecht

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

// TBBLUE.TBU Maker:
//    Issue 2 ZX Spectrum Next core
//    Issue 3 ZX Spectrum Next core
//    Issue 4 ZX Spectrum Next core

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#ifdef _MSC_VER
   #ifndef __MINGW__
      #include "dirent.h"
   #else
      #include <dirent.h>
   #endif
#else
   #include <dirent.h>
#endif

#ifdef _MSC_VER
   #define strcasecmp _stricmp
   #define strlwr _strlwr
#endif

#define FN_TBBLUE "TBBLUE.TBU"

#pragma pack(1)

FILE *ftbu = NULL;
unsigned char buffer[512];   // must be 512

struct HEADER
{
   unsigned char filetype[8];
   unsigned char machine[17];
   unsigned char records[512-25];   // must be 512 bytes total size
};

struct RECORD
{
   unsigned char length;          // 15, 0xff = end of records
   unsigned char type;            // 1 = ZX Spectrum Next (slot 1)
   unsigned char boardid;         // nextreg 0x0f
   unsigned char core_major;      // nextreg 0x01
   unsigned char core_minor;      // nextreg 0x0e
   uint32_t      sector_offset;   // from end of header
   uint32_t      sector_length;   // number of 512 byte sectors
   uint16_t      checksum;        // fletcher-16
};

struct HEADER hdr;
struct RECORD *record;

struct FLASH_RECORD {
   unsigned char length;       // 7
   unsigned char type;         // 0 = ZXN Anti-Brick, 128 = NGO Anti-Brick
   unsigned char board_id;     // nextreg 0x0F
   unsigned char core_version; // nextreg 0x01
   unsigned char cv_minor;     // nextreg 0x0E
   uint16_t      offset;       // offset from start of user area to screen$
};

struct FLASH_RECORD f_record;

int COREMAJOR(int version)
{
   return ((version / 10000) * 16) + ((version / 100) % 100);
};

int COREMINOR(int version)
{
   return version % 100;
}

void error(const char *format, ...)
{
   va_list v;
   
   va_start(v, format);
   vprintf(format, v);
   
   if (ftbu) fclose(ftbu);
   
   printf("\n\n");
   exit(1);
}

long get_filesize(FILE *f)
{
   // return filesize and position at end of file

   if (fseek(f, 0, SEEK_END))
      return -1;

   return ftell(f);
}

int fletcher16(int checksum, unsigned char *buffer, int size)
{
   // simple implementation from wikipedia
   
   uint16_t sum1;
   uint16_t sum2;
   
   int index;
   
   sum1 = checksum & 0xff;
   sum2 = checksum >> 8;
   
   for (index = 0; index < size; ++index)
   {
      sum1 = (sum1 + buffer[index]) % 255;
      sum2 = (sum2 + sum1) % 255;
   }
   
   return (sum2 << 8) | sum1;
}

int validate_tbu(void)
{
   if (strcmp(hdr.filetype, "TBUFILE") != 0) return 1;
   if (strcmp(hdr.machine, "ZX SPECTRUM NEXT") != 0) return 2;
   return 0;
}

int open_index_tbu(char *mode)
{
   if ((ftbu = fopen(FN_TBBLUE, mode)) == NULL)
      return 1;
   
   if (fread(&hdr, 1, 512, ftbu) < 512)
   {
      fclose(ftbu);
      ftbu = NULL;
      return 2;
   }
   
   return 0;
}

int main(int argc, char **argv)
{
   int i, j, num;
   int operation;
   
   operation = 0;

   if (argc == 2)
   {
      if (strcasecmp(argv[1], "add") == 0)
         operation = 1;
      
      if (strcasecmp(argv[1], "list") == 0)
         operation = 2;
   }
   
   if ((argc >= 3) && (strcasecmp(argv[1], "pull") == 0))
      operation = 3;
   
   printf("\n");
   
   if (operation == 0)
   {
      printf("Usage:\n\n"
             "%s add\n  create or append all bitstreams in directory to " FN_TBBLUE "\n\n"
             "%s list\n  print numbered list of all bitstreams stored in " FN_TBBLUE "\n\n"
             "%s pull ...\n  pull bitstreams from " FN_TBBLUE " by number\n\n"
             "Bitstream filenames are form \"zxnext-issue-core.bin\"\n  issue = 2, 3, 4\n  core = core version eg 30200\n\n"
             "Copyright 2022 ZX Spectrum Next Project\n\n",
             argv[0], argv[0], argv[0]);
      exit(1);
   }
   
   switch (operation)
   {
      case 1:
         // add
         
         printf("ADD\n");
         
         if (open_index_tbu("rb+"))
         {
            if ((ftbu = fopen(FN_TBBLUE, "wb+")) == NULL)
               error("Couldn't create " FN_TBBLUE);
            
            sprintf(hdr.filetype, "TBUFILE");
            sprintf(hdr.machine, "ZX SPECTRUM NEXT");
            memset(hdr.records, 0xff, sizeof(hdr.records));
            
            if (fwrite(&hdr, 1, 512, ftbu) < 512)
               error("Unable to write " FN_TBBLUE);
         }
         
         if (validate_tbu())
            error(FN_TBBLUE " is malformed");
         
         {
            DIR *din;
            struct dirent *de;
            FILE *fin;
            int type;
            int boardid, coreversion;

            if ((din = opendir(".")) == NULL)
               error("Unable to open directory");
         
            while (de = readdir(din))
            {
               strlwr(strcpy(buffer, de->d_name));
               
               type = -1;
               
               num = 0;
               if ((sscanf(buffer, "zxnext-%d-%d.bin%n", &boardid, &coreversion, &num) == 2) && (buffer[num] == 0))
               {
                  type = 1;
               }
               else
               {
                  num = 0;
                  if ((sscanf(buffer, "zxnext-%d-%d-ab.bin%n", &boardid, &coreversion, &num) == 2) && (buffer[num] == 0))
                  {
                     type = 0;
                  }
               }

               if (type >= 0)
               {
                  if ((boardid < 2) || (boardid > 4) || (coreversion < 30000) || (coreversion >= 50000))
                  {
                     printf("Rejected %s - out of range parameters\n", buffer);
                     continue;
                  }
            
                  for (record = (struct RECORD *)(hdr.records); record->length != 0xff; record = (struct RECORD *)((unsigned char *)(record) + record->length))
                  {
                     if ((record->boardid == (boardid - 2)) && (record->type == type) && (record->core_major == COREMAJOR(coreversion)) && (record->core_minor == COREMINOR(coreversion)))
                     {
                        printf("Skipping %s - duplicate\n", buffer);
                        break;
                     }
                  }
                  
                  if (record->length == 0xff)
                  {
                     if (((unsigned char *)(record) - (unsigned char *)(&hdr)) > (512 - sizeof(*record) - 1))
                     {
                        printf("Unable to add %s - index full\n", buffer);
                     }
                     else
                     {
                        if ((fin = fopen(de->d_name, "rb")) == NULL)
                        {
                           printf("Skipping %s - unable to open file\n", buffer);
                        }
                        else
                        {
                           record->length = sizeof(*record);
                           record->type = type;
                           record->boardid = boardid - 2;
                           record->core_major = COREMAJOR(coreversion);
                           record->core_minor = COREMINOR(coreversion);
                           record->sector_offset = 0;
                           record->sector_length = 0;
                           record->checksum = 0;
                        
                           if (((record->sector_offset = get_filesize(ftbu)) == 0xffffffff) || ((record->sector_offset % 512) != 0))  // also positions file pointer at end of file
                           {
                              closedir(din);
                              fclose(fin);
                              error ("Unable to seek or improperly sized " FN_TBBLUE);
                           }
                           
                           record->sector_offset = (record->sector_offset / 512) - 1;
                           
                           printf("Adding %s\n", buffer);
                           
                           num = (record->boardid < 2) ? 959  : 4287;

                           do
                           {
                              memset(buffer, 0xff, sizeof(buffer));
                              
                              if (fread(buffer, 1, 512, fin) == 0) break;
                              fwrite(buffer, 1, 512, ftbu);
                              
                              record->checksum = fletcher16(record->checksum, buffer, 512);
                              record->sector_length++;
                              
                              num--;
                           }
                           while ((!feof(fin)) && num);

                           // add flash record

                           memset(buffer, 0xff, sizeof(buffer));
                           
                           while (num--)
                           {
                              fwrite(buffer, 1, 512, ftbu);
                              
                              record->checksum = fletcher16(record->checksum, buffer, 512);
                              record->sector_length++;
                           };
                           
                           num = 1 + sprintf(buffer, "ZX SPECTRUM NEXT%cZXN ISSUE %d %s", 0, record->boardid + 2, (record->type == 0) ? "ANTI-BRICK" : "ZX SPECTRUM NEXT"); 
                           
                           memset(&f_record, 0xff, sizeof(f_record));
                           
                           f_record.length = sizeof(f_record);
                           f_record.type = record->type;
                           f_record.board_id = record->boardid;
                           f_record.core_version = record->core_major;
                           f_record.cv_minor = record->core_minor;
                           
                           memcpy(buffer + num, (void *)(&f_record), sizeof(f_record));
                           
                           fwrite(buffer, 1, 512, ftbu);
                              
                           record->checksum = fletcher16(record->checksum, buffer, 512);
                           record->sector_length++;

                           // update tbu file index

                           fseek(ftbu, 0, SEEK_SET);
                           fwrite(&hdr, 1, 512, ftbu);
                           
                           fclose(fin);
                        }
                     }
                  }
               }
            }
            
            closedir(din);
         }
         
         break;  

      case 2:
         // list
         
         printf("LIST\n");
         
         if (open_index_tbu("rb"))
            error("Invalid " FN_TBBLUE);
         
         if (validate_tbu())
            error(FN_TBBLUE " is malformed");
         
         num = 1;
         
         for (record = (struct RECORD *)(hdr.records); record->length != 0xff; record = (struct RECORD *)((unsigned char *)(record) + record->length))
         {
            sprintf(buffer, "zxnext-%d-%d%02d%02d%s.bin", record->boardid + 2, record->core_major / 16, record->core_major % 16, record->core_minor, (record->type) ? "" : "-ab");
            printf("%d - %s, length = %d sectors, checksum = %04X\n", num, buffer, record->sector_length, record->checksum);
            num++;
         }
      
         break;
      
      case 3:
      default:
         // pull
         
         printf("PULL\n");
         
         if (open_index_tbu("rb"))
            error("Invalid " FN_TBBLUE);
         
         if (validate_tbu())
            error(FN_TBBLUE " is malformed");
         
         for (i = 2; i < argc ; ++i)
         {
            if (sscanf(argv[i], "%d", &num) != 1)
               error("Aborting - invalid argument %s", argv[i]);

            record = (struct RECORD *)(hdr.records);
            
            for (j = 1; j != num; ++j)
            {
               if (record->length == 0xff) break;
               record = (struct RECORD *)((unsigned char *)(record) + record->length);
            }
            
            if (record->length == 0xff)
            {
               printf("Record %d not present\n", num);
            }
            else if (fseek(ftbu, (record->sector_offset + 1) * 512, SEEK_SET))
            {
               error("Aborting - record %d has out of range offset", num);
            }
            else
            {
               FILE *fout;
               
               sprintf(buffer, "zxnext-%d-%d%02d%02d%s.bin", record->boardid + 2, record->core_major / 16, record->core_major % 16, record->core_minor, (record->type) ? "" : "-ab");
               
               if ((fout = fopen(buffer, "wb")) == NULL)
               {
                  printf("Skipping %d - can't create %s\n", buffer);
               }
               else
               {
                  int checksum = 0;
                  
                  printf("%d - %s\n", num, buffer);

                  for (num = record->sector_length; num; --num)
                  {
                     memset(buffer, 0xff, 512);
                        
                     fread(buffer, 1, 512, ftbu);
                     fwrite(buffer, 1, 512, fout);
                        
                     checksum = fletcher16(checksum, buffer, 512);
                  }
                  
                  fclose(fout);
                     
                  if (record->checksum != checksum)
                     printf("^ Warning checksum did not match %04X\n", checksum);
               }
            }
         }
         
         break;
   }

   if (ftbu) fclose(ftbu);
   ftbu = NULL;

   printf("\n");
   
   return 0;
}
