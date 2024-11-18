Write-Host "Select country: " -ForegroundColor Yellow
Write-Host "1: India `n2: Australia `n3: China" -ForegroundColor Cyan

$number= Read-Host "Please select country"

if($number -eq 1)
    {
    Write-Host "India's capital is New Delhi" -ForegroundColor Green
    }
elseif($number -eq 2)
    {
    Write-Host "Australia's capital is Canberra" -ForegroundColor Green
    }
elseif($number -eq 3)
    {
    Write-Host "China's capital is Bejing" -ForegroundColor Green
    }
else
    {
    Write-Host "Please select country from list" -ForegroundColor Red
    }