        #Test Suite Commands - Interfaces to the outside
        #Note: as of the day before my presentation to the embedded systems class, 11/29/17, these have not been completed, only one has.
   
    # run all dsc's all tests
    function global:invoke-TADSExecuteAllDSCsWIthAllTestScripts {
       # set global variables for use to run all tests in suite.  
      set-TADSGlobalRunSuiteCommand 
     
       #runs all DSCs.
      TADSDSCExecuteAllDSCs  

        #run func that runs all dscs.  Set all dscs to have if global stuff in it...to know if it should run for a test or the whole suite.  
    }

#------------------------------------------------------------------------------------------------

    # run all dscs 1 test
    function global:invoke-TADSExecuteAllDSCsWIthOneTestScript{

        #set the name of the test in global var
        set-TADSGlobalRunSuiteCommand 
        #runs all DSCs
        TADSDSCExecuteAllDSCs  
  
    }
#------------------------------------------------------------------------------------------------

    # run 1 dsc all tests
    function global:invoke-TADSExecuteOneDSCsWIthEntireTestSuite{

        #set the name of the test in global var
        set-TADSGlobalRunSuiteCommand 
        #runs appropriate DSC.
        run-TADSSelectedDSC
        
        
    }
#------------------------------------------------------------------------------------------------
   
    # run 1 dsc 1 test
    function global:invoke-TADSExecuteOneDSCsWIthOneTestCase{
     
        #set the name of the test in global var
        set-TADSGlobalRunSuiteCommand 
        #runs appropriate DSC.
        run-TADSSelectedDSC

    }   

#------------------------------------------------------------------------------------------------
    #HELPERS 

#------------------------------------------------------------------------------------------------

        #Sets global for use later - sets AppName SuiteName, and run command
        function global:set-TADSGlobalRunSuiteCommand(){
           "RUNNING ##############" 
           $TFVar = $global:TadsUserInput_TestName -ne ""
           $global:tadsAppName = $global:TadsUserInput_AppName + ".test/" + $global:TadsUserInput_JunitRunner #set global app name
          # Write-host("com.example.android.wearable.recipeassistant." + $global:TadsUserInput_TestName  + " " + $global:tadsAppName)
         if($TFVar){
            $global:tadsTestName = "com.example.android.wearable.recipeassistant." + $global:TadsUserInput_TestName  + " " + $global:tadsAppName 
            $global:TADSGlobalRunCommand =   "-w -e class " + $global:tadsTestName
           
         }else{
           $global:TADSGlobalRunCommand = " -w " + $global:tadsAppName #set run command.
         }

            
        }
#------------------------------------------------------------------------------------------------
       
       #runs appropriate DSC.
       function run-TADSSelectedDSC{

        if($global:TadsUserInput_DSCName  -eq "invoke-TADSDSCAirplaneModeOnRunOffRun"){
          invoke-TADSDSCAirplaneModeOnRunOffRun 
        }

        if($global:TadsUserInput_DSCName  -eq "invoke-TADSDSCBluetoothModeOnRunOffRun"){
        invoke-TADSDSCBluetoothModeOnRunOffRun      

       }
  
      }
#------------------------------------------------------------------------------------------------

  