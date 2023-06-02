while ($whileLoop -ne "q") {
    $firstName = $null
    $lastName = $null
    Clear-Host
    while (!$firstName -or !$lastName) {
        $firstName = Read-Host "Insert First Name for new user"
        $lastName = Read-Host "Insert Surname"
        if (!$firstname) {
            Write-Host "First Name cannot be empty"
        }
        if (!$lastName) {
            Write-Host "Last Name cannot be Empty"
        }
    }

    # Validate input for invalid characters
    if ($firstName -notmatch "^[\w'-]+\s*[\w'-]*$") {
        Write-Host "Invalid characters in First Name"
        $whileLoop = Read-Host "hit any key and press enter, or q to quit"
        continue
    }
    
    if ($lastName -notmatch "^[\w'-]+\s*[\w'-]*$") {
        Write-Host "Invalid characters in Last Name"
        $whileLoop = Read-Host "hit any key and press enter, or q to quit"
        continue
    }

    $name = "$firstName $lastName"
    $samAccountName = "$firstName$lastName" -replace '\s'
    $UPN = "$firstName$lastName@umanski.com" -replace '\s'
    $password = ConvertTo-SecureString "WelcomeBack10" -AsPlainText -Force

    # Trim samAccountName if it exceeds 20 characters
    if ($samAccountName.Length -gt 20) {
        $samAccountName = "$($firstName.Substring(0,1))$lastName"
    }

    Write-Host "Display Name: $name"
    Write-Host "SAM account name: $samAccountName"
    Write-Host "UPN: $UPN"    

    $whileError = 0                             
    while ($whileError -notmatch "^[yn]$") {
        $choice = Read-Host "Would you like to create this user? (y or n)"
        if ($choice -eq "y") {
            try {
                # Catch specific errors that may occur
                New-ADUser -Name $name -GivenName $firstName -Surname $lastName -SamAccountName $samAccountName -DisplayName $name -UserPrincipalName $UPN -AccountPassword $password -Enabled $true -ErrorAction Stop
                Write-Host "User Added"
                $whileError = "y"   
            }
            catch [Microsoft.ActiveDirectory.Management.ADIdentityAlreadyExistsException] {
                Write-Host "Error creating user: A user with the same SamAccountName already exists"
                $whileError = "n"
            }
            catch {
                Write-Host "Error creating user: $($_.Exception.Message)"
                $whileError = "n"
            }   

        }
        elseif ($choice -eq "n") { 
            Write-Host "User not added"
            $whileError = "n"
        }
        else {
            Write-Host "Please Enter y or n"
        }
    }
    $whileLoop = Read-Host "hit any key and press enter, or q to quit"
}
