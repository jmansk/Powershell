Param(
    [Parameter(Mandatory=$true)]
    [string]$CSVPath,
    
    [Parameter(Mandatory=$true)]
    [string]$OU
)

$users = Import-Csv -Path $CSVPath
foreach ($user in $users) {
    $securePassword = ConvertTo-SecureString -String $user.Password -AsPlainText -Force
    New-ADUser -SamAccountName $user.Username -UserPrincipalName "$($user.Username)@domain.com" -GivenName $user.FirstName -Surname $user.LastName -Name "$($user.FirstName) $($user.LastName)" -Enabled $true -ChangePasswordAtLogon $true -AccountPassword $securePassword -Path $OU
}
