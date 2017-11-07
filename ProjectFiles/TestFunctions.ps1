  #Test Functions
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\ADBCommands -force 
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\DSCs -force 
  Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\TestSuiteCommands -force 
    
    
 #-----------------------------------------
 <# $results = start-testSuitesAll
  $print = "YESSS " + $results
  $print#>
 #-----------------------------------------
 #set-ADBBluetoothOn
 #set-ADBAirplanModeOn

 #-----------------------------------------
 #invoke-DSCAirplaneModeOnRunOffRun
 #-----------------------------------------

 #-----------------------------------------
 get-ADBAirplaneMode
 #-----------------------------------------