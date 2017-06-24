$packageGUID    = '{618A02F0-E2C5-4E1B-9D0E-B0282167431D}'
$installerType  = 'MSI'       # only one of these: exe, msi, msu

$url            = 'http://www.winrad.org/bin/Winrad161.msi'          # download url
$silentArgs     = '/qn'         # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0)       # please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

# main helpers - these have error handling tucked into them already
# installer, will assert administrative rights
# if removing $url64, please remove from here
# Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
msiexec /x $packageGUID /qn