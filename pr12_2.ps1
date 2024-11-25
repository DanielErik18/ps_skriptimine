function countservice
{
param
    (
        [string]$status
    )
    if($status -eq "Running")
        {
        $running = Get-Service | ?{$_.Status -eq "Running"}
        Write-Host "Total services in running state = " $running.count
        }
    if($status -eq "Stopped")
        {
        $stopped = Get-Service | ?{$_.Status -eq "Stopped"}
        Write-Host "Total services in running state = " $stopped.count
        }
}

countservice -status Running
countservice -status Stopped