# Import the module with functions
Import-Module -Name "E:\HyperVShared\ADserver\MyFunctions.psm1"


# Get all function names from the module and store them in an array
$functionNames = Get-Command -Module "MyFunctions" -CommandType Function | Select-Object -ExpandProperty Name
$functionCount = (Get-Command -Module "myFunctions" -CommandType Function).Count 

$searchString = "zzz"
 



for ($i = 0; $i -lt $functionCount; $i++){
    Write-Host ($i + 1)". $($functionNames[$i])"
}
$user = "test"
$computer = "testWKS"
$userChoice = Read-Host "Please select an option 1 - $i"

if ($userChoice -eq $functionCount){
    Invoke-Expression ($)
}

# Check if the user choice is valid
if ($userChoice -as [int] -in 1..$functionCount) {
    # Get the name of the selected function
    $selectedFunction = $functionNames[$userChoice -as [int]]

    # Invoke the selected function with parameters if needed
    Invoke-Expression "$selectedFunction '$user' '$computer'"

}
else {
    Write-Host "Invalid choice. Please select a number between 1 and $functionCount."
}

if ($functionNames -match $searchString) {
Write-Host "found"

}

read-host
