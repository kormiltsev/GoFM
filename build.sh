#!/bin/bash

dir="./bin"

linuxArm64Path="$dir/gofm-linux-arm64"
linuxAmd64Path="$dir/gofm-linux-amd64"
windowsArm64Path="$dir/gofm-windows-arm64.exe"
windowsAmd64Path="$dir/gofm-windows-amd64.exe"

GOOS=linux GOARCH=arm64 go build -o $linuxArm64Path .
echo $linuxArm64Path

GOOS=linux GOARCH=amd64 go build -o $linuxAmd64Path .
echo $linuxAmd64Path

GOOS=windows GOARCH=arm64 go build -o $windowsArm64Path .
echo $windowsArm64Path

GOOS=windows GOARCH=amd64 go build -o $windowsAmd64Path .
echo $windowsAmd64Path
echo "Done"