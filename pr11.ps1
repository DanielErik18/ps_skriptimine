$nr1 = Read-Host "Sisesta number 1: "
$nr2 = Read-Host "Sisesta number 2: "

Write-Host "Calculator" -ForegroundColor Green
Write-Host "1: Liitmine" -ForegroundColor Yellow
Write-Host "2: Lahutamine" -ForegroundColor Yellow
Write-Host "3: Jagamine" -ForegroundColor Yellow
Write-Host "4: Korrutamine" -ForegroundColor Yellow

$valik = Read-Host "Sisestage valik: "

Switch($valik)
    {
    1
        {
        $summa=[int32]$nr1+[int32]$nr2
        Write-Host "Summa on $summa"
        }
    2
        {
        $summa=[int32]$nr1-[int32]$nr2
        Write-Host "Vahe on $summa"
        }
    3
        {
        $summa=[int32]$nr1/[int32]$nr2
        Write-Host "Jagatis on $summa"
        }
    4
        {
        $summa=[int32]$nr1*[int32]$nr2
        Write-Host "Korrutis on $summa"
        }
    }