Install-WindowsFeature -name Web-Server -IncludeManagementTools
echo "Welcome from $env:COMPUTERNAME" > C:\inetpub\wwwroot\index.html
