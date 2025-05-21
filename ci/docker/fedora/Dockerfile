# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/fedora
FROM fedora:latest AS env

# Install .NET SDK
# see: https://docs.microsoft.com/en-us/dotnet/core/install/linux-fedora
RUN dnf -y update \
&& dnf -y install dotnet-sdk-8.0 \
&& dnf clean all
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
