FROM mcr.microsoft.com/windows/servercore:ltsc2019
SHELL ["powershell"]
RUN mkdir app
COPY np++.ps1 /app/np++.ps1
WORKDIR app
RUN .\np++.ps1
