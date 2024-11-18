$group = @("Red","Yellow","Blue","Green")

$result=@()

for($i=1 ; $i -le 20 ; $i++)
    {
    $g = Get-Random $group
    $temp = [PSCustomObject]@{
    RollNumber = $i
    Group = $g
    }
    $result += $temp
    }
$result