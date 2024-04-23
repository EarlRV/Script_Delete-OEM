#Directory to search files
$FilePath = "C:\Windows\System32\DriverStore\FileRepository\oem*.inf" 


#If file(s) exist in directory -> Show said file(s)
If (Test-Path -Path $FilePath -PathType Leaf ) 
{ ( Get-ChildItem $FilePath) + (Write-Host "`n File(s) exist: " -ForegroundColor Blue) } 

        #Else -- Say "File(s) DO NOT exist"
        Else{Write-Host "File(s) DO NOT exist" -f Red}


#Set verbose color to easy distuingish message
$Host.PrivateData.VerboseForegroundColor = 'Red'

#Line Break
"`n"
#Initiate verbose message
Write-Verbose -Verbose "Deleting files: "

#Referring to If-Else statement  above: If target file(s) are found in directory -> Delete file(s) and show full file path and name
Get-ChildItem -Path $Directory -Filter oem*.inf -Recurse | Remove-Item -Force -WhatIf
Write-Host "File(s) deleted successfully" -ForegroundColor Green
