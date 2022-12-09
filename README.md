[![Build Status][docker_status]][docker_link]
[![Build Status][linux_status]][linux_link]
[![Build Status][macos_status]][macos_link]
[![Build Status][windows_status]][windows_link]

[docker_status]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/docker.yml/badge.svg
[docker_link]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/docker.yml
[linux_status]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/linux.yml/badge.svg
[linux_link]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/linux.yml
[macos_status]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/macos.yml/badge.svg
[macos_link]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/macos.yml
[windows_status]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/windows.yml/badge.svg
[windows_link]: https://github.com/or-tools/dotnet_or-tools/actions/workflows/windows.yml

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

