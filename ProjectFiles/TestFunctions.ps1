  #Test Functions
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\ADBCommands -force 
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\DSCs -force 
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\TestSuiteCommands -force 
  #Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\ProjectMain -force
    
    
 #-----------------------------------------
 <# $results = start-testSuitesAll
  $print = "YESSS " + $results
  $print#>
 #-----------------------------------------
 #set-ADBBluetoothOn

 #Test airplane mode setting and getting.
 #-----------------------------------------
 #set-ADBAirplanModeOff
 #$dd = adb shell settings get global airplane_mode_on
 #"On or off " + $dd
 #get-ADBAirplaneMode
 #
 #set-ADBAirplanModeOn
 #$onOrOff = adb shell settings get global airplane_mode_on #returns 0 airplaneMode off, and 1 airplaneMode on.  
 #"On or off 2 " + $onOrOff
 #
 # get-ADBAirplaneMode
 #-----------------------------------------

 #-----------------------------------------
 #
 #invoke-TADSDSCAirplaneModeOnRunOffRun(start-TADSTestSuitesAll )  
 #-----------------------------------------

 #-----------------------------------------
 #start-TADStestSuiteSpecific
 #-----------------------------------------

 #-----------------------------------------
 #global:invoke-TADSExecuteAllDSCsWIthOneTest "blah " "blahjhbdfhjfd"
 #-----------------------------------------
 #required
$global:TadsUserInput_AppName = "com.example.android.wearable.recipeassistant"
#required
$global:TadsUserInput_JunitRunner = "android.support.test.runner.AndroidJUnitRunner"
#required if doing only one test - if you fill this in you cannot run all of the test suites.
$global:TadsUserInput_TestName = ""
#rquired if doing only on DSC
$global:TadsUserInput_DSCName = "invoke-TADSDSCAirplaneModeOnRunOffRun"

invoke-TADSExecuteAllDSCsWIthAllTestScripts
"GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG " + $global:tadsAppName

 #-----------------------------------------
  # "com.example.android.wearable.recipeassistant.SecondTest com.example.android.wearable.recipeassistant.test/android.support.test.runner.AndroidJUnitRunner"
  #invoke-TADSExecuteAllDSCsWIthAllTestScripts "com.example.android.wearable.recipeassistant" "android.support.test.runner.AndroidJUnitRunner"
  #set-TADSTestCaseName "SecondTest"
  #-----------------------------------------
  #invoke-TADSExecuteAllDSCsWIthOneTestScript("com.example.android.wearable.recipeassistant", "SecondTest", "android.support.test.runner.AndroidJUnitRunner")
  #start-TADSTestCaseOne
 #-----------------------------------------
 