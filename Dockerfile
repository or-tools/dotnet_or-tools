# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/ubuntu
FROM ubuntu:22.04 AS env
# Install system build dependencies
ENV PATH=/usr/local/bin:$PATH
RUN apt update -qq \
&& DEBIAN_FRONTEND=noninteractive apt install -yq \
dotnet-sdk-6.0 \
&& dotnet --info \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy project
FROM env AS devel
WORKDIR /home/project
COPY . .

# Build
FROM devel AS build
RUN dotnet build -c Release

# Run
FROM build AS run
RUN dotnet run -c Release

# Pack
FROM build AS pack
RUN dotnet pack -c Release
