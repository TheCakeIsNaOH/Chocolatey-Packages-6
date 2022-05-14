﻿$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  file64         = "$toolsDir\okular-22.04.1-1013-windows-msvc2019_64-cl.exe"
  silentArgs     = "/S"
  validExitCodes = @(0)
  softwareName   = 'Okular'
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item $toolsDir\*.exe -ea 0
