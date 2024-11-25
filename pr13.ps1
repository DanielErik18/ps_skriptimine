# Main menüü kuvamise funktsioon
function mainmenu
{
    cls
    Write-Host "`t `t Area calculator" -ForegroundColor Green
    Write-Host "`n `t `t Main menu" -ForegroundColor Yellow
    Write-Host "`nPlease select the option to perfrom the respective task" -ForegroundColor Yellow
    Write-Host "`n1: Area of square" -ForegroundColor Green
    Write-Host "2: Area of rectangle" -ForegroundColor Green
    Write-Host "3: Area of circle" -ForegroundColor Green
    Write-Host "4: Area of triangle" -ForegroundColor Green
    Write-Host "5: Exit" -ForegroundColor Green

    $valik = Read-Host "`nEnter your choice: "
    return $valik
}

#Ruudu pindala arvuatmise funktsioon
function square
{
    cls
    Write-Host "`t`t Area of square" -ForegroundColor Green
    $ruudukulg = Read-Host "Enter side of the square: "
    $pindala = [int32]$ruudukulg*[int32]$ruudukulg
    Write-Host "`nArea of the square : $pindala" -ForegroundColor Green

    do
    {
        Write-Host "`n Please select the next option" -ForegroundColor Yellow
        Write-Host "`n 1: Return to Main Menu" -ForegroundColor Green
        Write-Host "`n 2: Exit" -ForegroundColor Green

        $valik = Read-Host "`n Enter your choice: "
    
        if($valik -eq 2){
        exit
        }
        if($valik -eq 1){
        continue
        }
        else{
        Write-Host "`nEnter correct option" -ForegroundColor Red
        }
    }until($valik -eq "1")
}

#Ristküliku arvutamise funktsioon
function rectangle
{
    cls
    Write-Host "`t`t Area of Rectangle" -ForegroundColor Green
    $pikkus = Read-Host "Enter height of the Rectangle: "
    $laius = Read-Host "Enter length of the Rectangle: "
    $pindala = [int32]$pikkus*[int32]$laius
    Write-Host "`nArea of the Rectangle : $pindala" -ForegroundColor Green

    do
    {
        Write-Host "`n Please select the next option" -ForegroundColor Yellow
        Write-Host "`n 1: Return to Main Menu" -ForegroundColor Green
        Write-Host "`n 2: Exit" -ForegroundColor Green

        $valik = Read-Host "`n Enter your choice: "
    
        if($valik -eq 2){
        exit
        }
        if($valik -eq 1){
        continue
        }
        else{
        Write-Host "`nEnter correct option" -ForegroundColor Red
        }
    }until($valik -eq "1")
}

#Ringi pindala arvutamise funktsioon
function circle
{
    cls
    Write-Host "`t`t Area of Circle" -ForegroundColor Green
    $raadius = Read-Host "Enter radius of Circle "
    
    $pindala = [int32]$raadius*[int32]$raadius*3.14
    Write-Host "`nArea of the Circle : $pindala" -ForegroundColor Green

    do
    {
        Write-Host "`n Please select the next option" -ForegroundColor Yellow
        Write-Host "`n 1: Return to Main Menu" -ForegroundColor Green
        Write-Host "`n 2: Exit" -ForegroundColor Green

        $valik = Read-Host "`n Enter your choice: "
    
        if($valik -eq 2){
        exit
        }
        if($valik -eq 1){
        continue
        }
        else{
        Write-Host "`nEnter correct option" -ForegroundColor Red
        }
    }until($valik -eq "1")
}

#Kolmnurga arvutamise funktsioon
function triangle
{
    cls
    Write-Host "`t`t Area of Triangle" -ForegroundColor Green
    $alus = Read-Host "Enter base of Triangle "
    $kõrgus = Read-Host "Enter height of Triangle "
    $pindala = [int32]$alus*[int32]$kõrgus/2
    Write-Host "`nArea of the Circle : $pindala" -ForegroundColor Green
    
    do
    {
        Write-Host "`n Please select the next option" -ForegroundColor Yellow
        Write-Host "`n 1: Return to Main Menu" -ForegroundColor Green
        Write-Host "`n 2: Exit" -ForegroundColor Green

        $valik = Read-Host "`n Enter your choice: "
    
        if($valik -eq 2){
        exit
        }
        if($valik -eq 1){
        mainmenu
        }
        else{
        Write-Host "`nEnter correct option" -ForegroundColor Red
        }
    }until($valik -eq "1")
}

#Põhitsükkel, mis kutsub eelnevalt tehtud funktsioone
do
{
$valik = mainmenu
switch($valik)
    {
        1
            {
                square
            }
        2
            {
                rectangle
            }
        3
            {
                circle
            }
        4
            {
                triangle
            }
    }
}
while($valik -ne "5")