Param(
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Get-ADUser -Identity $Username | Get-ADPrincipalGroupMembership
