    #Test Suite Commands

    function start-testSuitesAll{
     $returnVal = adb shell am instrument -w com.example.android.wearable.recipeassistant.test/android.support.test.runner.AndroidJUnitRunner
     return $returnVal

    }

    #Need a function with param of an array that runs the suites and the name of the solution.


    #Which funcs can be seen by others.
    Export-ModuleMember -Function start-testSuitesAll
    #Export-ModuleMember -Function get-connectivityInfo



  