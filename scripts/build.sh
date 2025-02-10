#!/bin/bash

# 创建输出目录
mkdir -p build

# Windows x64
echo "Building for Windows x64..."
GOOS=windows GOARCH=amd64 go build -o build/gopeed-windows-amd64.exe ./cmd/gopeed

# macOS x64
echo "Building for macOS x64..."
GOOS=darwin GOARCH=amd64 go build -o build/gopeed-darwin-amd64 ./cmd/gopeed

# macOS ARM64 (Apple Silicon)
echo "Building for macOS ARM64..."
GOOS=darwin GOARCH=arm64 go build -o build/gopeed-darwin-arm64 ./cmd/gopeed

# Linux x64
echo "Building for Linux x64..."
GOOS=linux GOARCH=amd64 go build -o build/gopeed-linux-amd64 ./cmd/gopeed

echo "Build complete! Check the build directory for the binaries."
