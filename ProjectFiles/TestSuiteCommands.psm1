        #Test Suite Commands - Interfaces to the outside

   
    # run all dsc's all tests
    function global:invoke-TADSExecuteAllDSCsWIthAllTestScripts([string]$inAppName) {
        set-TADSGlobalAppName($inAppName) 
        #run func that runs all dscs.  Set all dscs to have if global stuff in it...to know if it should run for a test or the whole suite.  
    }

#------------------------------------------------------------------------------------------------

    # run all dscs 1 test
    function global:invoke-TADSExecuteAllDSCsWIthOneTestScript([string]$inAppName, [string]$inTestName){
        $global:appName = $inAppName
        $global:testName = "com.example.android.wearable.recipeassistant.SecondTest com.example.android.wearable.recipeassistant.test/android.support.test.runner.AndroidJUnitRunner"
        invoke-TADSDSCExecuteAllDSCs    
    }
#------------------------------------------------------------------------------------------------

    # run 1 dsc all tests
    function global:invoke-TADSExecuteOneDSCsWIthAllTestScripts([string]$inAppName, [string]$inDSCName) {
        $global:appName = $inAppName
        invoke-TADSDSCAirplaneModeOnRunOffRun 
    }
#------------------------------------------------------------------------------------------------
   
    # run 1 dsc 1 test
    function global:invoke-TADSExecuteOneDSCsWIthAllTestScripts([string]$inAppName, [string]$inDSCName, [string]$inTestName) {
        $global:appName
        invoke-TADSDSCAirplaneModeOnRunOffRun 
    }


    #HELPERS 
#------------------------------------------------------------------------------------------------

    #This function will run every suite in the test folder for the application - used internally
    function global:start-TADSTestSuitesAll{
         "start TADSTestSuitesAll"
         $returnVal = adb shell am instrument -w com.example.android.wearable.recipeassistant.test/android.support.test.runner.AndroidJUnitRunner
         "end TADSTestSuitesAll"
         return $returnVal

     }

#------------------------------------------------------------------------------------------------


       function global:start-TADStestSuiteSpecific{
          "start TADStestSuiteSpecific"
          $appName =     "com.example.android.wearable.recipeassistant.SecondTest com.example.android.wearable.recipeassistant.test/android.support.test.runner.AndroidJUnitRunner"
          $returnVal =   adb shell am instrument -w -e class $global:test + "  "Name $global:appName
          "end TADStestSuiteSpecific"
         return $returnVal
       }

#------------------------------------------------------------------------------------------------

        #Sets global for use later
        function set-TADSGlobalAppName([string]$inAppName, [string]$inTestName = ""){
            $global:tadsAppName = $inAppName + " " + ".test/android.support.test.runner.AndroidJUnitRunner"
            $global:tadsAppName
            # Make if then for inTestName
            $global:tadsTestName = "com.example.android.wearable.recipeassistant." + $inTestName 
            $global:tadsTestName
        }
#------------------------------------------------------------------------------------------------

  