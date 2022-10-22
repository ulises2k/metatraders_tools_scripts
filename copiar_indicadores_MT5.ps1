# Script que copia todos los indicadores en MT5
# @ulises2k
# 27/07/2021
#
#Windwos 2008
#Set-ExecutionPolicy RemoteSigned
$dir = Get-ChildItem  $env:USERPROFILE\AppData\Roaming\MetaQuotes\Terminal\| ? {$_.PSIsContainer}
$dirMT = $env:USERPROFILE+"\AppData\Roaming\MetaQuotes\Terminal\"

foreach ($d in $dir){
	
	if (($d.Name -ne "Community") -and ($d.Name -ne "Common") -and ($d.Name -ne "Help")) {

		$DirIndicador = $dirMT + [string]$d.Name + "\MQL5\Indicators\CommunityPower\"
		if (Test-Path -Path $DirIndicador) {
			$curDir = Get-Location
			Copy-Item -Path $curDir + "\Indicators\CommunityPower\*.ex5" -Destination $DirIndicador
			Write-Host $DirIndicador
		}
		$DirIndicador = $dirMT + [string]$d.Name + "\MQL5\Indicators\"
		if (Test-Path -Path $DirIndicador) {
			$curDir = Get-Location
			Copy-Item -Path $curDir + "\Indicators\*.ex5" -Destination $DirIndicador
			Write-Host $DirIndicador
		}
	}
}

#Windows 2008
#Set-ExecutionPolicy Restricted