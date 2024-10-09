## Set home path based on uesrname
$HOMEPATH = "C:\Users\" + $env:username
## Import credentials from file 
$credential = Import-CliXml -Path $HOMEPATH\credential.xml
# Full Powershell Path for ease of reuse
$psPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
## Start a Powershell Process with credentials (as SUP user). Start a new runas process with elevated priviliges will open UAC prompt.  
$ps = Start-Process -PassThru -FilePath $psPath -Credential $credential -ArgumentList '-noprofile -command &{Start-Process ',  $psPath, ' -Wait -verb runas}'
##  Wait for shell to exit
$ps.WaitForExit()