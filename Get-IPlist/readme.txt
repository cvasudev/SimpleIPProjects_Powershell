Get-IPlist.ps1 is a simple powershell based project which will help to ennumerate IP addresses given that we have initial IP and CIDR

Usage:
 - Download the Get-IPlist.ps1
 - In your powershell use "Import-module <Location of Get-IPlist.ps1 along with the file name>
 - Declare a variable to hold the return value based on the command
    Get-iplist -IPaddress <IP address inside double quotes> -cidr <As integer>
   e.g.
    $a = Get-iplist -IPaddress "192.168.1.0" -cidr 20
 - You can now export the details as txt file
   Write-Output $a | Out-file "<Path and name of text file"
 
Common issue:
 - Ensure that the execution policy is set to "Unrestricted" for powershell since it will not allow you to take module.
 
