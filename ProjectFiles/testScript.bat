
SETLOCAL ENABLEEXTENSIONS
@echo off
SET /A "index=1"
SET /A "count=3"
:while
if %index% leq %count% (
  ::Turns on bluetooth.
adb shell dumpsys connectivity
Pause
 adb shell am start -a android.settings.BLUETOOTH_SETTINGS 
REM adb shell input keyevent 19
REM adb shell input keyevent 23
   adb shell am start -a android.bluetooth.adapter.action.REQUEST_ENABLE

   adb shell am instrument -w com.example.android.wearable.recipeassistant.test/android.support.test.runner.AndroidJUnitRunner

   SET /A "index=index + 1"
pause
   goto :while
)
 

PAUSE