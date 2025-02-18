Write-Output 'Sláðu inn notendanafn:'
$username = Read-Host
Write-Output 'Sláðu inn fullt nafn:'
$fullname = Read-Host
Write-Output 'Sláðu inn lykilorð:'
$password = Read-Host -AsSecureString
$description = 'This is a test User'

New-LocalUser -Name $username -Password $password -Description $description -FullName $fullname

$groupname = 'Test Users'
New-LocalGroup -Name $groupname

Add-LocalGroupMember -Group $groupname -Member $username

Get-LocalGroup $groupname

Get-LocalGroupMember -Group $groupname -Member $username