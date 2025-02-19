FROM mcr.microsoft.com/windows/servercore:20H2-amd64

# (CMD 모드에서 실행)
SHELL ["cmd", "/S", "/C"]

# PowerShell Core 최신 버전 설치 (버전은 상황에 맞게 교체)
RUN curl -L -o C:\powershell.msi https://github.com/PowerShell/PowerShell/releases/download/v7.5.0/PowerShell-7.5.0-win-x64.msi && msiexec /package C:\powershell.msi /quiet /norestart && del C:\powershell.msi

# (선택) 이제부터 pwsh를 기본 Shell로 사용
# SHELL ["pwsh", "-NoLogo", "-NoProfile", "-Command"]
ENTRYPOINT ["pwsh", "-NoLogo", "-NoProfile"]