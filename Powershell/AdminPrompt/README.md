# Scripts for creating an admin prompt
There is a practice in some organizations that you need to login as a different user that is allowed to elevate to local administrator of a pc but not your own user.

## About
In this example files in this directory go to your `C:\scripts\` folder or a similar folder not in your user profile. You will get errors if you put scripts in your Homedir...
Shortcut is for ease of use as the script needs to start with `-ExecutionPolicy Bypass` as they are not signed by the organization.

Will start 3 Windows.
First for running the script itself (Start minimized if using shortcut)
One that is started as your SUP user without admin privilidges
One that with runas administrator what will pop up a UCA prompt

## Usage
|File | Description
|---|---|
|createCredentialsFile.ps1 | Will create the credentials file for you. This is an XML file that containes the encrypted password (SecureString). This is encrypted using your original users credentials |
|adminPrompt.ps1 | Will start the the admin prompt with the provided credentials. |
|adminPrompt.lnk | A link for your convenience. |