#DSCs 
Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\ADBCommands -force 
Import-Module C:\Users\jrsan\Dropbox\UCCS\CS5371_EmbeddedAndMobileTesting\ResearchProject\ProjectFiles\TestSuiteCommands -force 


function invoke-DSCAirplaneModeOnRunOffRun 
    {
    $success = "heck YA"
    $results = start-testSuitesAll
    "running"
    #Compares results of test to pass.  
     If( $results -like '*OK (*') {   
        $success
        $results
     } Else {
        $results
     }
     "ending"
    }


    #Which funcs can be seen by others.
    Export-ModuleMember -Function invoke-DSCAirplaneModeOnRunOffRun 
    #Export-ModuleMember -Function get-connectivityInfo