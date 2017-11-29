
    
    function global:set-TADSADBBluetoothOn{
        adb shell am start -a android.settings.BLUETOOTH_SETTINGS 
        adb shell am start -a android.bluetooth.adapter.action.REQUEST_ENABLE
    }

    function global:get-TADSADBconnectivityInfo{
        return adb shell dumpsys connectivity 
    }

   function global:set-TADSADBAirplanModeOn{
        adb shell settings put global airplane_mode_on 1
        adb shell am broadcast -a android.intent.action.AIRPLANE_MODE
    }

    function global:set-TADSADBAirplanModeOff{
        adb shell settings put global airplane_mode_on 0
        adb shell am broadcast -a android.intent.action.AIRPLANE_MODE
    }

    #Will be true if on or false if not
    function global:get-TADSADBAirplaneMode{
    #"get-ADBAirplanMode Running" 
    $onOrOff = adb shell settings get global airplane_mode_on #returns 0 airplaneMode off, and 1 airplaneMode on.  
    if($onOrOff -eq 1){
        return "true"
      }  else { 
        return "false"
      }
    }
    
    
    
  
   # Export-ModuleMember -Function set-AirplanModeOn