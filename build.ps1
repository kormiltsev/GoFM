$appName = "gofm"
$version = ""

$versionFilePath = Join-Path $PSScriptRoot "./conf/version.txt"
if (Test-Path $versionFilePath) {
    $version = Get-Content $versionFilePath -Raw
    Write-Host "The version number is: $version"
}

$dir = "./bin"

$linuxArm64Path = $dir + "/" + $appName + "-linux-arm64"
$linuxAmd64Path = $dir + "/" + $appName + "-linux-amd64"
$windowsArm64Path = $dir + "/" + $appName + "-windows-arm64-" + ".exe"
$windowsAmd64Path = $dir + "/" + $appName + "-windows-amd64-" + ".exe"

Write-Host $linuxArm64Path
$env:GOOS="linux"
$env:GOARCH="arm64"
go build -o $linuxArm64Path .

Write-Host $linuxAmd64Path
$env:GOOS="linux"
$env:GOARCH="amd64"
go build -o $linuxAmd64Path .

Write-Host $windowsArm64Path
$env:GOOS="windows"
$env:GOARCH="arm64"
go build -o $windowsArm64Path .

Write-Host $windowsAmd64Path
$env:GOOS="windows"
$env:GOARCH="amd64"
go build -o $windowsAmd64Path .

Write-Host "Done"