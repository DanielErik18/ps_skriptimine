function countstart
{
$running = Get-Service | ?{$_.Status -eq "Running"}
Write-Host "Total services in running state = " $running.count
}

countstart

function countstop
{
$stopped = Get-Service | ?{$_.Status -eq "Stopped"}
Write-Host "Total services in running state = " $stopped.count
}

countstop