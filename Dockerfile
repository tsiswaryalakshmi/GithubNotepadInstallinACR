FROM mcr.microsoft.com/windows/servercore:ltsc2019
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]
ENV APP_ROOT="c:\\application"
RUN New-Item -Type Directory -Path $env:APP_ROOT
WORKDIR $APP_ROOT
COPY np++.ps1 ./docker/np++.ps1
EXPOSE 80
ENTRYPOINT ["powershell.exe", ".\\np++.ps1"]
