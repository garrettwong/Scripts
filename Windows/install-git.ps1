[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url="github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/Git-2.21.0-64-bit.exe"
Invoke-WebRequest -Uri $url -OutFile test.exe

.\test.exe /VERYSILENT /SUPRESSMESSAGEBOXES
