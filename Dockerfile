FROM microsoft/nanoserver
COPY np++.ps1 c:\\np++.ps1
CMD ["powershell.exe", "c:\\np++.ps1"]
