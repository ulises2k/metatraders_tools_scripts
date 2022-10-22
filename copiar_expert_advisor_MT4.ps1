# Script que copia todos los Experts Advisor en MT5
# @ulises2k
# 26/09/2022
#
#Windwos 2008
#Set-ExecutionPolicy RemoteSigned
$dir = Get-ChildItem  $env:USERPROFILE\AppData\Roaming\MetaQuotes\Terminal\ | ? { $_.PSIsContainer }
$dirMT = $env:USERPROFILE + "\AppData\Roaming\MetaQuotes\Terminal\"

foreach ($d in $dir) {
	
	if (($d.Name -ne "Common") -and ($d.Name -ne "Help")) {

		$DirEA = $dirMT + [string]$d.Name + "\MQL4\Experts\"
		if (Test-Path -Path $DirEA) {
			$curDir = Get-Location
			Copy-Item -Path $curDir + "\Experts\*.ex4" -Destination $DirEA
			Write-Host $DirEA
		}
	}
}

#Windows 2008
#Set-ExecutionPolicy Restricted
# Clean All events
#Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }