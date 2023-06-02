do {
    
    
    $computerGroups = @()
    $userGroups = @()
    $friendlyName = Read-Host "What will this group be called? (Friendly Name)"
    
    # Replace whitespace with underscores to create the function name
    $functionName = $friendlyName -replace '\s+', '_'
    
    # Collect user groups
    do {
        $newValue = Read-Host "Enter a user group to add. Type done to finish."
        if ($newValue -ne "done") {
            $userGroups += $newValue
        }
    } while ($newValue -ne "done")
    
    # Collect computer groups
    do {
        $newValue = Read-Host "Enter a computer group to add. Type done to finish."
        if ($newValue -ne "done") {
            $computerGroups += $newValue
        }
    } while ($newValue -ne "done")
    
    # Create the function definition string
    $functionDefinition = @"
    function $functionName {
        param (
            `$user,
            `$computer
        )
    
"@
    
    foreach ($usergroup in $userGroups) {
        $functionDefinition += @"
      `n`n  Add-ADGroupMember -Identity `"$usergroup`" -Members `$user
    
      `n`n  Write-Host "Added user to $userGroup"
"@
    }
    
    foreach ($computerGroup in $computerGroups) {
        $functionDefinition += @"
       `n`n Add-ADGroupMember -Identity `"$computerGroup`" -Members `$computer
    
     `n`n   Write-Host "Added computer to $computerGroup"
"@
    }
    
    $functionDefinition += @"
      `n`n  return "$friendlyName"
    }
"@
    
    # Append the function definition to the functions file
    $newFunctionsPath = "E:\HyperVShared\ADserver\myFunctions.psm1"
    $functionDefinition | Add-Content -Path $newFunctionsPath -Encoding utf8
    
    $continue = Read-Host "Do you want to add another group?"
    
} while (
    $continue -eq "y"
)