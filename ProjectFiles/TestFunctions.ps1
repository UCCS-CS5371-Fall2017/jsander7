  #Test Functions
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\ADBCommands -force 
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\DSCs -force 
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\TestSuiteCommands -force 
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\ProjectMain -force
    
    
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
 #invoke-TADSDSCAirplaneModeOnRunOffRun 
 #-----------------------------------------

 #-----------------------------------------
 #start-TADStestSuiteSpecific
 #-----------------------------------------

 #-----------------------------------------
 #global:invoke-TADSExecuteAllDSCsWIthOneTest "blah " "blahjhbdfhjfd"
 #-----------------------------------------
 invoke-TADSExecuteAllDSCsWIthAllTestScripts "com.example.android.wearable.recipeassistant"