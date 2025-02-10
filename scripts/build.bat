@echo off

:: 创建输出目录
mkdir build 2>nul

:: Windows x64
echo Building for Windows x64...
set GOOS=windows
set GOARCH=amd64
go build -o build/gopeed-windows-amd64.exe ./cmd/gopeed

:: macOS x64
echo Building for macOS x64...
set GOOS=darwin
set GOARCH=amd64
go build -o build/gopeed-darwin-amd64 ./cmd/gopeed

:: macOS ARM64
echo Building for macOS ARM64...
set GOOS=darwin
set GOARCH=arm64
go build -o build/gopeed-darwin-arm64 ./cmd/gopeed

:: Linux x64
echo Building for Linux x64...
set GOOS=linux
set GOARCH=amd64
go build -o build/gopeed-linux-amd64 ./cmd/gopeed

echo Build complete! Check the build directory for the binaries. 