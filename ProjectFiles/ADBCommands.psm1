    function set-ADBBluetoothOn{
        adb shell am start -a android.settings.BLUETOOTH_SETTINGS 
        adb shell am start -a android.bluetooth.adapter.action.REQUEST_ENABLE
    }

    function get-ADBconnectivityInfo{
        return adb shell dumpsys connectivity 
    }

   function set-ADBAirplanModeOn{
        adb shell settings put global airplane_mode_on 1
        adb shell am broadcast -a android.intent.action.AIRPLANE_MODE
    }

    function set-ADBAirplanModeOff{
    adb shell settings put global airplane_mode_on 0
    adb shell am broadcast -a android.intent.action.AIRPLANE_MODE
    }

    #Will be true if on or false if not
    function get-ADBAirplaneMode{
    "get-ADBAirplanMode Running"
      $onOrOff = adb shell settings get global airplane_mode_on
      if($onOrOff = 1){
        return True
      }  else { 
        return false
      }
    }
    
    
    
    #Which funcs can be seen by others.
    Export-ModuleMember -Function set-ADBBluetoothOn
    Export-ModuleMember -Function get-ADBconnectivityInfo
    Export-ModuleMember -Function set-ADBAirplanModeOn
    Export-ModuleMember -Function set-ADBAirplanModeOff
    Export-ModuleMember -Function get-ADBAirplaneMode
   # Export-ModuleMember -Function set-AirplanModeOn