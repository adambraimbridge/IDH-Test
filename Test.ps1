# Create Temp Directory
if (-not(Test-Path -Path 'C:\temp\hello'))
{
   New-Item -Path 'C:\temp' -ItemType directoryhello
}

# Using the environment variables exposed by the Jenkins job 
Set-Content -Path "c:\temp\hello\$($env:Filename).txt" -Value $env:Message