$ToolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$AhkFile        = Join-Path $ToolsDir "install.ahk"

$PackageArgs = @{
  PackageName    = 'openconnect-gui'
  FileType       = 'exe'
  SilentArgs     = ''
  Url            = 'https://github.com/openconnect/openconnect-gui/releases/download/v1.5.3/openconnect-gui-1.5.3-win32.exe'
  Checksum       = '2055a303ed6a40a0267203bc3c3d4ad14c86f7d690ab3cc85918ff0afc2103b1ca985e28f9e1efa92fb7b3cb41cd0add02aac9439a83b9b42e29e5bd01bff621'
  ChecksumType   = 'sha512'
}

Start-Process AutoHotKey $AhkFile
Install-ChocolateyPackage @PackageArgs
