FROM mcr.microsoft.com/powershell:latest

RUN pwsh -Command "Install-Module -Name PSScriptAnalyzer -Force -Scope AllUsers -AllowClobber"

COPY . /
RUN mkdir --parents /root/.config/powershell/ /.config/powershell/ && \
    cp /profile.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1 && \
    cp /profile.ps1 /.config/powershell/Microsoft.PowerShell_profile.ps1

ENTRYPOINT [ "pwsh", "-Command" ]
