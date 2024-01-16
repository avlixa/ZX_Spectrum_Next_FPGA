@echo off

set /p version="Enter version (ex: 30200 for 3.02.00): "

mcsmaker ngo %version%
IF ERRORLEVEL 1 goto error

promgen -w -p mcs -c FF -o ngo-2-%version% -s 16384 -data_file up 00000 mcs-ngo-issue2-ab.bin -data_file up 80000 mcs-ngo-issue2.bin -spi
IF ERRORLEVEL 1 goto error
goto exit

:error
echo Error!!

:exit
del mcs-ngo-issue2-ab.bin mcs-ngo-issue2.bin ngo-2-%version%.cfi ngo-2-%version%.prm
rem del ngo-2-%version%.cfi ngo-2-%version%.prm