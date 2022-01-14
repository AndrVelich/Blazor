FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim
RUN apt-get -y update
RUN apt-get -y install git