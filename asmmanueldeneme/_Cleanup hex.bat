echo off
del *.fil /s
del *.HEX /s
del *.ERR /s
del *.o /s
del *.LST /s
del *.XRF /s



echo _
echo ************************************************
echo             Don't delete some files
echo ************************************************
echo _

attrib +R "AdvDemos/Q3Demo/Model/animation.cfg"
attrib +R "Source/DesignTime/Resources/lazres.exe"

rem del *.exe /s
rem del *.cfg /s

attrib -R "AdvDemos/Q3Demo/Model/animation.cfg"
attrib -R "Source/DesignTime/Resources/lazres.exe"

for /r %1 %%R in (__history) do if exist "%%R" (rd /s /q "%%R")