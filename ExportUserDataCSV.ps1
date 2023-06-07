Param(
    [Parameter(Mandatory=$true)]
    [string]$OU,
    
    [Parameter(Mandatory=$true)]
    [string]$OutputPath
)

Get-ADUser -Filter * -SearchBase $OU | Select-Object SamAccountName, GivenName, Surname, Enabled, LastLogonDate | Export-Csv -Path $OutputPath -NoTypeInformation
