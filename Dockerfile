FROM mcr.microsoft.com/windows/servercore:ltsc2019
COPY np++.ps1 c:\\np++.ps1
CMD ["powershell.exe", "c:\\np++.ps1"]
