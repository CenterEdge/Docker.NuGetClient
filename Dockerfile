FROM ubuntu:latest

# Install mono and wget
RUN apt-get update && apt-get install -y --no-install-recommends \
	mono-complete \
	wget \
	tzdata \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy script
COPY nuget.sh /usr/bin/nuget

# Download nuget and configure execute permissions on the script
RUN wget -O /usr/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe \
	&& chmod +x /usr/bin/nuget