$PackageVersion = "1.6.1"

$Global:ErrorActionPreference = 'Stop'
$Global:InformationPreference = 'Continue'
$Global:VerbosePreference     = 'Continue'


$PackageArgs = @{
  PackageName  = 'openconnect-gui'
  FileType     = 'exe'
  SilentArgs   = '/S'
  Url          = "https://www.infradead.org/openconnect-gui/download/openconnect-gui-$($PackageVersion)-win64.exe"
  Checksum     = '8BD369BE0F5F4AB4C7E64E2204AE5162BEB86AD9AB7FC2752D67429170A18E4BE77A8F36667FF229BC6A444B2BF005BF6596708DEA4DC2B75DF2BDD1FC2E6BD0'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage @PackageArgs
