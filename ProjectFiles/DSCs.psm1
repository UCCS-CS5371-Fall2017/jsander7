#DSCs 

function global:invoke-TADSDSCExecuteAllDSCs{
invoke-TADSDSCAirplaneModeOnRunOffRun
}


#------------------------------------------------
#Runs test with airplane mode off then runs it on.
#------------------------------------------------
function global:invoke-TADSDSCAirplaneModeOnRunOffRun 
    {
     set-ADBAirplanModeOff
    $success = "DSCAirplaneModeOnRunOffRun - Test Passed"
    $results = start-TADSTestSuitesAll
    "Initialize Test Results: " + $results
    #-----------------------------------------
    set-ADBAirplanModeOn
    get-ADBAirplaneMode
    #-----------------------------------------
    #Compares results of test to pass. 
    $results = start-TADSTestSuitesAll 
     If( $results -like '*OK (*') {   
     $success + $results
     } Else {
     "Test Fail Airplane Mode DSC"
        $results
     }
     set-ADBAirplanModeOff
     "End invoke-DSCAirplaneModeOnRunOffRun"
    }


   