$users = Import-Csv -Path "C:\path\to\your\file.csv"
foreach ($user in $users) {
    $username = $user.notendanafn
    $password = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force
    New-LocalUser -Name $username -Password $password -FullName "$($user.fornafn) $($user.eftirnafn)"
    Add-LocalGroupMember -Group $user.hopur -Member $username
    Add-LocalGroupMember -Group "Allir" -Member $username
}