@echo off

set /p version="Enter version (ex: 30200 for 3.02.00): "

mcsmaker 4 %version%
IF ERRORLEVEL 1 goto error

promgen -w -p mcs -c FF -o zxnext-4-%version% -s 32768 -data_file up 000000 mcs-zxnext-issue4-ab-14.bin -data_file up 220000 mcs-zxnext-issue4.bin -spi
IF ERRORLEVEL 1 goto error
goto exit

:error
echo Error!!

:exit
del mcs-zxnext-issue4-ab-14.bin mcs-zxnext-issue4.bin zxnext-4-%version%.cfi zxnext-4-%version%.prm
rem del zxnext-4-%version%.cfi zxnext-4-%version%.prm