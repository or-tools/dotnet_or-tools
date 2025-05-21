# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/ubuntu
FROM ubuntu:rolling AS env

# Install system build dependencies
ENV PATH=/usr/local/bin:$PATH
RUN apt update -qq \
&& apt install -yq wget dotnet8 \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
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
