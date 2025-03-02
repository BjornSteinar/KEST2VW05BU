$groupFolders = @("Innkaup", "Sala", "Yfirstjórn")
foreach ($group in $groupFolders) {
    $path = "C:\Gögn\$group"
    icacls $path /inheritance:d
    icacls $path /remove:g "Users", "Authenticated Users", "Everyone"
    icacls $path /grant "Administrators:(OI)(CI)F"
    icacls $path /grant "$($group):(OI)(CI)F"
}
$sameignPath = "C:\Gögn\Sameign"
icacls $sameignPath /grant "Allir:(OI)(CI)M"  # Modify permissions (read/write/delete)