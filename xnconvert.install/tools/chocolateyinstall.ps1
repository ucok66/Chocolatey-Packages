$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://download.xnview.com/XnConvert-win.exe'
$checksum = '6F5308A5CE3C54F69526230E17D87DCBCA3ABDEE5C295931AD4B10403A4FE130'
$checksumType = 'sha256'
$url64 = 'https://download.xnview.com/XnConvert-win-x64.exe'
$checksum64 = '3C864643709D6287FD64FC1D190D2F46E10F46F3646960FF76DC3A239A2782D6'
$checksumType64 = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
  -ValidExitCodes "$validExitCodes"
