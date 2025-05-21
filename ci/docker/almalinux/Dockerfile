# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/almalinux
FROM almalinux:latest AS env

# Install system build dependencies
RUN dnf -y update \
&& dnf -y install wget libicu \
&& dnf clean all \
&& rm -rf /var/cache/dnf

# Install .NET SDK
# see: https://learn.microsoft.com/en-us/dotnet/core/install/linux-scripted-manual#scripted-install
RUN wget -q "https://dot.net/v1/dotnet-install.sh" \
&& chmod a+x dotnet-install.sh \
&& ./dotnet-install.sh -c 8.0 -i /usr/local/bin
# Trigger first run experience by running arbitrary cmd
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
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
