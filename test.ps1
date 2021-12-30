
class lanlogic {
    [string] firstFunction($message){
        return Write-Host $message;
    }
}

$test = [lanlogic]::new()
# $test.firstFunction('Hello World!')








# ($userprofiles = get-childitem "C:\Users").name -join ','


# $adminAccount = "Lanlogic"
# $profiles = Get-CimInstance -Class Win32_UserProfile
# $arr = $null
# foreach ($item in $profiles){

# #Write-Output $item.LocalPath
# # Write-Output $item.LocalPath.split('\')[2]

# if ($item.LocalPath.split('\')[1] -eq "Users" -and $item.LocalPath.split('\')[2] -ne $adminAccount){
#     $item.LocalPath
#     #$arr += @($item)
# }

# }
# # $arr


# try {
#     $testVar = Get-ComputerInfo # Test for Windows 10, Windows 7 won't recognize this
#     $profiles = Get-CimInstance -Class Win32_UserProfile
#     $adminAccount = "Lanlogic" # $env:AdminAccount
#     foreach ($item in $profiles){
#         if ($item.LocalPath.split('\')[1] -eq "Users" -and $item.LocalPath.split('\')[2] -ne $adminAccount){
#             "Removed: " + $item.LocalPath
#             # $item | Remove-CimInstance
#         }
#     }
# }catch {
#     "Error: This script is only for Windows 10"
# }

# New-ItemProperty -Path HKLM:\SOFTWARE\CentraStage\ -Name $env:CustomUDF -PropertyType String -Value (($userprofiles = get-childitem "$($ENV:SystemDrive)\Users").name -join ',')

# $arr = $null
# $arr += @(Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'ggust' })
# $arr | Measure-Object
# $arr[0]

# $arr += @(Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'russell' })

# $arr[1]

# $arr | Measure-Object

# $arr[0].LocalPath
# Write-Output "Add number 2"

# $arr += @(Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'russell' })
# $arr | Measure-Object


 #Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'ggust' } #Select specific individual
 
 # Remove specific individual
 # Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'jpotter' } | Remove-CimInstance 
<# 

Run Updates, Delete old user accounts, rename

Needed: 
- local account to keep
- new computer name
- uninstall Box, Dropbox, etc, plus that data (should be in user profile)

Steps:
1. Windows 10: Upgrade or update to latest Feature Release (reboots)
2. delete all user profile except our local admin account
3. rename pc
4. reboot

#>