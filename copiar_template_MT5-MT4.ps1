# Script que copia el templates en todos los MT5
# @ulises2k
#
#Windwos 2008
#Set-ExecutionPolicy RemoteSigned
$dir = Get-ChildItem  $env:USERPROFILE\AppData\Roaming\MetaQuotes\Terminal\ | ? { $_.PSIsContainer }
$dirMT = $env:USERPROFILE + "\AppData\Roaming\MetaQuotes\Terminal\"

foreach ($d in $dir) {

	if (($d.Name -ne "Community") -and ($d.Name -ne "Common") -and ($d.Name -ne "Help")) {

		$DirTemplate = $dirMT + [string]$d.Name + "\MQL5\Profiles\Templates\"
		if (Test-Path -Path $DirTemplate) {
			$OriginDir = Join-Path -Path $pwd -ChildPath "\Templates-MT5\Default.tpl"
			Copy-Item -Path $OriginDir -Destination $DirTemplate
			Write-Host $DirTemplate
		}
	}
}

foreach ($d in $dir) {

	if (($d.Name -ne "Community") -and ($d.Name -ne "Common") -and ($d.Name -ne "Help")) {

		$DirTemplate = $dirMT + [string]$d.Name + "\MQL4\Profiles\Templates\"
		if (Test-Path -Path $DirTemplate) {
			$OriginDir = Join-Path -Path $pwd -ChildPath "\Templates-MT4\Default.tpl"
			Copy-Item -Path $OriginDir -Destination $DirTemplate
			Write-Host $DirTemplate
		}
	}
}

#Windows 2008
#Set-ExecutionPolicy Restricted
# Clean All events
#Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }