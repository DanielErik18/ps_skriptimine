while(Get-Process Notepad -ea SilentlyContinue)
    {
    Write-Host "Notepad is running"
    }