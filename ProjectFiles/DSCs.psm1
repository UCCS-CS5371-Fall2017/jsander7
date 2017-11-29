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
    
     set-TADSADBAirplanModeOff
    #run test with APMode off
    #$results = 
    adb shell am instrument $global:TADSGlobalRunCommand
    "TADS Airplane mode is off. "
    #$results
    "******  Turning Airplane mode on!  ******" 
    #-----------------------------------------
    set-TADSADBAirplanModeOn
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
     set-TADSADBAirplanModeOff
     "End invoke-DSCAirplaneModeOnRunOffRun"
    }


#------------------------------------------------
#Runs test with bluetooth mode off then runs it on.
#------------------------------------------------
function global:invoke-TADSDSCBluetoothModeOnRunOffRun 
    {
     set-TADSADBBluetoothOn
   "Bluetooth is on!"
   # $results = 
    adb shell am instrument $global:TADSGlobalRunCommand
    "TEST RESULTS WITH BLUETOOTH ON " 
     #$results
    #-----------------------------------------
    set-TADSADBAirplanModeOff
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
     set-TADSADBAirplanModeOff
     "End invoke-DSCAirplaneModeOnRunOffRun"
    }

   