$arv1 = Read-Host "Sisesta esimene arv: "
$arv2 = Read-Host "Sisesta teine arv: "

if([int]$arv1 -gt [int]$arv2)
    {
    Write-Host "Esimene arv $arv1 on suurem kui teine arv $arv2"
    }
else
    {
    Write-Host "Teine arv $arv2 on suurem, kui esimene arv $arv1"
    }