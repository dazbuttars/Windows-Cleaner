#cd to Downloads
Set-Location ~\Downloads

#Install Choco
$Restricted = $false
$ex = Get-ExecutionPolicy
if ($ex -eq 'Restricted')
{
	Set-ExecutionPolicy Bypass -Scope Process -Force
	$Restricted = $true
}
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#Download applications

#Install IOBit Uninstaller
choco install iobit-uninstaller -y
   
#Install Malware Cleaners
choco install malwarebytes -y

#Do you want to install Windows Defender?
do{
    $l = 0
    $UsersAnswer = Read-Host -Prompt 'Do you want to install Windows Defender? (Yes/No)'
    if ($UsersAnswer -eq 'Yes'){

#Install Windows Defender
		choco install microsoftsecurityessentials -y
$l = 1
   }
   elseif ($UsersAnswer -eq 'No'){
       Write-Host 'O.K.'
       $l = 1
    }
    else{
       Write-Host 'Type Yes or No.'
    }
    } while ($l -eq 0)

    #Do you want to install CCleaner?
do{
    $l = 0
    $UsersAnswer = Read-Host -Prompt 'Do you want to install CCleaner? (Yes/No)'
    if ($UsersAnswer -eq 'Yes'){
        
#Install CCleaner
		choco install ccleaner -y
$l = 1
   }
   elseif ($UsersAnswer -eq 'No'){
       Write-Host 'O.K.'
       $l = 1
    }
    else{
       Write-Host 'Type Yes or No.'
    }
    } while ($l -eq 0)

        #Do you want to install Defraggler?
do{
    $l = 0
    $UsersAnswer = Read-Host -Prompt 'Do you want to install Defraggler? (Yes/No)'
    if ($UsersAnswer -eq 'Yes'){
        
#Download Defraggler
		choco install defraggler -y
$l = 1
   }
   elseif ($UsersAnswer -eq 'No'){
       Write-Host 'O.K.'
       $l = 1
    }
    else{
       Write-Host 'Type Yes or No.'
    }
}
while ($l -eq 0)