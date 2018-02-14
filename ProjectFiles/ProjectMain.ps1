#See ReadMe DSC prior to use.
Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\ADBCommands -force 
Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\DSCs -force 
Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\TestSuiteCommands -force 
#Instantiate globals as blank to start.
$global:tadsAppName = ""
$global:tadsTestName = ""
$global:TADSGlobalRunCommand = ""

#Note, change the TadsUserInput_TestName and or the TadsUserInput_DSCName before making a call as you invoke tests.


#required
$global:TadsUserInput_AppName = "com.example.android.wearable.recipeassistant"
#required
$global:TadsUserInput_JunitRunner = "android.support.test.runner.AndroidJUnitRunner"
#required if doing only one test - if you fill this in you cannot run all of the test suites.
$global:TadsUserInput_TestName = ""
#rquired if doing only on DSC
$global:TadsUserInput_DSCName = ""



 "^^^^^^ 1 ^^^^^^^"
 #invoke-TADSExecuteAllDSCsWIthAllTestScripts
 "^^^^^^ 2 ^^^^^^^"
 $global:TadsUserInput_TestName = "SecondTest"
 invoke-TADSExecuteAllDSCsWIthOneTestScript
 "^^^^^^ 3 ^^^^^^^"
 #$global:TadsUserInput_DSCName = "invoke-TADSDSCBluetoothModeOnRunOffRun"
 #invoke-TADSExecuteOneDSCsWIthEntireTestSuite
 #"^^^^^^ 4 ^^^^^^^"
 #invoke-TADSExecuteOneDSCsWIthOneTestCase
 #
