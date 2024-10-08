Github-CI:<br>
[![Build Status][github_amd64_linux_status]][github_amd64_linux_link]
[![Build Status][github_amd64_macos_status]][github_amd64_macos_link]
[![Build Status][github_amd64_windows_status]][github_amd64_windows_link]  
[![Build Status][github_arm64_macos_status]][github_arm64_macos_link]

[![Build Status][github_amd64_docker_status]][github_amd64_docker_link]

[github_amd64_linux_status]: ./../../actions/workflows/amd64_linux.yml/badge.svg
[github_amd64_linux_link]: ./../../actions/workflows/amd64_linux.yml
[github_amd64_macos_status]: ./../../actions/workflows/amd64_macos.yml/badge.svg
[github_amd64_macos_link]: ./../../actions/workflows/amd64_macos.yml
[github_amd64_windows_status]: ./../../actions/workflows/amd64_windows.yml/badge.svg
[github_amd64_windows_link]: ./../../actions/workflows/amd64_windows.yml

[github_arm64_macos_status]: ./../../actions/workflows/arm64_macos.yml/badge.svg
[github_arm64_macos_link]: ./../../actions/workflows/arm64_macos.yml

[github_amd64_docker_status]: ./../../actions/workflows/amd64_docker.yml/badge.svg
[github_amd64_docker_link]: ./../../actions/workflows/amd64_docker.yml

# Introduction

Sample project explaining how to use Google OR-Tools in a .Net project.

# Build

```sh
dotnet build -c Release
```

# Run

```sh
dotnet run -c Release
```

# Package

```sh
dotnet pack -c Release
```

## Testing
You can test using the provided Dockerfile

```sh
docker build --tag=dotnet_or-tools .
```

