FROM microsoft/iis:windowsservercore
COPY dotnet-runtime-2.0.4-win-x64.exe C:
RUN C:\dotnet-runtime-2.0.4-win-x64.exe /quiet /install
RUN apt-get -y update
RUN apt-get -y install git