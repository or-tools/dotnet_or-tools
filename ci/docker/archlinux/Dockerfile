# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/archlinux/
FROM archlinux:latest AS env

# Install system build dependencies
ENV PATH=/usr/local/bin:$PATH
# Install .NET SDK
RUN pacman -Syu --noconfirm dotnet-sdk
# Trigger first run experience by running arbitrary cmd
RUN dotnet --info

FROM env AS devel
WORKDIR /home/project
COPY . .

FROM devel AS build
RUN dotnet build -c Release

FROM build AS run
RUN dotnet run -c Release

FROM build AS pack
RUN dotnet pack -c Release
