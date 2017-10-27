function testFunc2{
adb shell dumpsys connectivity
adb shell am start -a android.settings.BLUETOOTH_SETTINGS 
adb shell am start -a android.bluetooth.adapter.action.REQUEST_ENABLE
adb shell am instrument -w com.example.android.wearable.recipeassistant.test/android.support.test.runner.AndroidJUnitRunner
}

Export-ModuleMember -Function testFunc2