# Script que copia todos los indicadores en MT5
# @ulises2k
# 27/07/2021
#
#Windwos 2008
#Set-ExecutionPolicy RemoteSigned
$dir = Get-ChildItem  $env:USERPROFILE\AppData\Roaming\MetaQuotes\Terminal\ | ? { $_.PSIsContainer }
$dirMT = $env:USERPROFILE + "\AppData\Roaming\MetaQuotes\Terminal\"

foreach ($d in $dir) {
	
	if (($d.Name -ne "Community") -and ($d.Name -ne "Common") -and ($d.Name -ne "Help")) {

		$DirIndicador = $dirMT + [string]$d.Name + "\MQL5\Indicators\CommunityPower\"
		if (Test-Path -Path $DirIndicador) {
			$OriginDir = Join-Path -Path $pwd -ChildPath "\Indicators\CommunityPower\*.ex5"
			Copy-Item -Path $OriginDir -Destination $DirIndicador
			Write-Host $DirIndicador
		}
		$DirIndicador = $dirMT + [string]$d.Name + "\MQL5\Indicators\"
		if (Test-Path -Path $DirIndicador) {			
			$OriginDir = Join-Path -Path $pwd -ChildPath "\Indicators\*.ex5"
			Copy-Item -Path $OriginDir -Destination $DirIndicador
			Write-Host $DirIndicador
		}
	}
}

#Windows 2008
#Set-ExecutionPolicy Restricted