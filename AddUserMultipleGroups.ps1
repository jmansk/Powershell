Param(
    [Parameter(Mandatory=$true)]
    [string]$Username,
    
    [Parameter(Mandatory=$true)]
    [string[]]$GroupNames
)

foreach ($groupName in $GroupNames) {
    Add-ADGroupMember -Identity $groupName -Members $Username
}
