@echo off

set /p version="Enter version (ex: 30200 for 3.02.00): "

mcsmaker 2 %version%
IF ERRORLEVEL 1 goto error

promgen -w -p mcs -c FF -o zxnext-2-%version% -s 16384 -data_file up 00000 mcs-zxnext-issue2-ab.bin -data_file up 80000 mcs-zxnext-issue2.bin -spi
IF ERRORLEVEL 1 goto error
goto exit

:error
echo Error!!

:exit
del mcs-zxnext-issue2-ab.bin mcs-zxnext-issue2.bin zxnext-2-%version%.cfi zxnext-2-%version%.prm
rem del zxnext-2-%version%.cfi zxnext-2-%version%.prm
