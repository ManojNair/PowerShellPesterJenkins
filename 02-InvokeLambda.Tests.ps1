. .\02-InvokeLambda.ps1
Describe "Check the Values Returned from the Invoke-BookAPI Function" {


It "Should return 3 values for a value less than 80" {

    (Invoke-BookAPI | ConvertFrom-Json).Count | Should BeExactly 3
}

}
