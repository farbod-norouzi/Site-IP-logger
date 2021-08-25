@echo off                                                        
echo               . . .                                    
echo               . . .                                    
echo               . . .                                    
echo ............                                           
echo ............  . . .                                    
echo ..      ....  .   .  ......      ...  ..............   
echo ..      ....  .   .  . ....      . .  ..............   
echo ............  .   .  . . ...     . .  .....            
echo ............  .   .  . .  ...    . .  .....            
echo ....          .   .  . .   ...   . .  .....            
echo ....          .   .  . .    ...  . .  .....  .......   
echo ....          .   .  . .     ... . .  .....  .......   
echo ....          .   .  . .      .... .  .....      ...   
echo ....          .   .  . .       ... .  ..............   
echo ....          . . .  ...       .....  ..............   
                                                            
echo _______________________________________________________

color 06

set /p n=Enter the site address: $
echo Site address "%n%" verified!
set /p m=Enter the site name: $
echo Site name "%m%" verified!
echo Pending...
echo Finding the IP of the site "%n%"
echo Please Wait...
echo Almost Complete!
echo Site IP% "n"% was found successfully! (Ping statistics for)
ping %n%

set /p f=Do you want to save site IP information% "n"%? (Y/N)
if %f%==Y goto print
if %f%==y goto print
if %f%==N goto end
if %f%==n goto end

:print
echo Complet!
ping %n% > ping.txt
pause

:end
exit