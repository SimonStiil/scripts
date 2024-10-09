## Set home path based on uesrname
$HOMEPATH = "C:\Users\" + $env:username
## Prompt for credentials
$MyCredential = Get-Credential
## Export XML file with credentials to homepath
$MyCredential | Export-CliXml -Path $HOMEPATH\credential2.xml