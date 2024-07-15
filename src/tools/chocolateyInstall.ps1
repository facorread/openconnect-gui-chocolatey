$PackageVersion = "1.6.2"

$Global:ErrorActionPreference = 'Stop'
$Global:InformationPreference = 'Continue'
$Global:VerbosePreference     = 'Continue'

$PackageArgs = @{
  PackageName  = 'openconnect-gui'
  FileType     = 'exe'
  SilentArgs   = '/S'
  Url          = "https://www.infradead.org/openconnect-gui/download/openconnect-gui-$($PackageVersion)-win64.exe"
  Checksum     = 'e8f244c52e9a82f3a8d8d87cbdce95f900c65e931fca3569ad338b0e0ee17b83fc7a7873c3997e7e6af77d79ad6a1c06eaa6187a26126c5842552e1e0f570799'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage @PackageArgs
