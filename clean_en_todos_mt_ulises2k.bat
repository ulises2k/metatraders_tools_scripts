

FOR /R /D %s IN ( %%USERPROFILE%%\AppData\Roaming\MetaQuotes\Terminal\ ) DO (

ECHO %subdir

set /p val=<%%f
echo "fullname: %%f"
echo "name: %%~nf"
echo "contents: !val!"

)


pause

del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\0A89B723E9501DAD3F2D5CB4F27EBDAB\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\2E8DC23981084565FA3E19C061F586B2\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\8C73B1A99665152447AA566EFFA823F1\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\9EB2973C469D24060397BB5158EA73A5\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\A20A7244EBA1025383DACF0DD8A74661\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\A727CFA680CFC23173D6D29A37C7B83E\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\E6B8517D8FD500AEC2174237E249218A\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\F12A9A912AECF38AE7D9DA870DFD073D\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\F547712E1BAC3C4FFC7113FD8FB11C80\logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\F762D69EEEA9B4430D7F17C82167C844\logs\*.log

del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\0A89B723E9501DAD3F2D5CB4F27EBDAB\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\2E8DC23981084565FA3E19C061F586B2\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\8C73B1A99665152447AA566EFFA823F1\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\9EB2973C469D24060397BB5158EA73A5\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\A20A7244EBA1025383DACF0DD8A74661\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\A727CFA680CFC23173D6D29A37C7B83E\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\E6B8517D8FD500AEC2174237E249218A\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\F12A9A912AECF38AE7D9DA870DFD073D\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\F547712E1BAC3C4FFC7113FD8FB11C80\MQL5\Logs\*.log
del /Q %USERPROFILE%\AppData\Roaming\MetaQuotes\Terminal\F762D69EEEA9B4430D7F17C82167C844\MQL5\Logs\*.log

pause