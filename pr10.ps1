$count = 0

do
{
    Write-Host "Notepad is running"
    $count ++
    Start-Sleep -Seconds 1
    $isNotepadOpen = Get-Process notepad -ea SilentlyContinue
}until($isNotepadOpen -eq $null )

$count