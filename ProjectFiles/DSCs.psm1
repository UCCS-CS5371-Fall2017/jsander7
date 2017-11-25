#DSCs 
#------------------------------------------
#Run All DSCs
#------------------------------------------
function global:TADSDSCExecuteAllDSCs{
invoke-TADSDSCAirplaneModeOnRunOffRun
invoke-TADSDSCBluetoothModeOnRunOffRun
}

#------------------------------------------------
#Runs test with airplane mode off then runs it on.
#------------------------------------------------
function global:invoke-TADSDSCAirplaneModeOnRunOffRun
    {
    
     set-ADBAirplanModeOff
    #run test with APMode off
    #$results = 
    adb shell am instrument $global:TADSGlobalRunCommand
    "TADS Airplane mode is off. "
    #$results
    "******  Turning Airplane mode on!  ******" 
    #-----------------------------------------
    set-ADBAirplanModeOn
    #-----------------------------------------
    #Compares results of test to pass. 

    $results = adb shell am instrument $global:TADSGlobalRunCommand
     If( $results -like '*OK (*') {   
     "!!!!!!!!!!!!!   DSCAirplaneModeOnRunOffRun - TEST PASSED"
      $results
     } Else {
     "Test Fail invoke-TADSDSCAirplaneModeOnRunOffRun DSC"
        #$results
     }
     set-ADBAirplanModeOff
     "End invoke-DSCAirplaneModeOnRunOffRun"
    }


#------------------------------------------------
#Runs test with bluetooth mode off then runs it on.
#------------------------------------------------
function global:invoke-TADSDSCBluetoothModeOnRunOffRun 
    {
     set-ADBBluetoothOn
   "Bluetooth is on!"
   # $results = 
    adb shell am instrument $global:TADSGlobalRunCommand
    "TEST RESULTS WITH BLUETOOTH ON " 
     #$results
    #-----------------------------------------
    set-ADBAirplanModeOff
    #-----------------------------------------
    #Compares results of test to pass. 
    "----------  TEST RESULTS WITH BLUETOOTH OFF: ----------" 
    $results = adb shell am instrument $global:TADSGlobalRunCommand
     If( $results -like '*OK (*') {   
     "DSCBluetoothOnRunOffRun - Test Passed"
      $results
     } Else {
     "Test Fail Airplane Mode DSC"
        #$results
     }
     set-ADBAirplanModeOff
     "End invoke-DSCAirplaneModeOnRunOffRun"
    }

   