$count = 0

do
{
    Write-Host "Notepad is running"
    $count ++
    Start-Sleep -Seconds 1
}while(Get-Process Notepad -ea SilentlyContinue )

$count