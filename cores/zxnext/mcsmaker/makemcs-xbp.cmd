@echo off

set /p version="Enter version (ex: 30200 for 3.02.00): "

mcsmaker xbp %version%
IF ERRORLEVEL 1 goto error

promgen -w -p mcs -c FF -o xbp-2-%version% -s 16384 -data_file up 00000 mcs-xbp-issue2-ab.bin -data_file up 80000 mcs-xbp-issue2.bin -spi
IF ERRORLEVEL 1 goto error
goto exit

:error
echo Error!!

:exit
del mcs-xbp-issue2-ab.bin mcs-xbp-issue2.bin xbp-2-%version%.cfi xbp-2-%version%.prm
rem del xbp-2-%version%.cfi xbp-2-%version%.prm
