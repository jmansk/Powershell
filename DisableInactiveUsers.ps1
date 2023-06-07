Param(
    [Parameter(Mandatory=$true)]
    [int]$InactiveDays
)

$inactiveDate = (Get-Date).AddDays(-$InactiveDays)
Get-ADComputer -Filter {LastLogonDate -lt $inactiveDate} | Disable-ADAccount
