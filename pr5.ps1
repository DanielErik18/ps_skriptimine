#Esimene i osa
#Get-Process | where{$_.ProcessName -eq "notepad"} | Select ProcessName, Id

#Teine ii osa
Get-ChildItem C:\temp\test

$file = Get-ChildItem C:\temp\test | where{$_.Name -like "*.csv"} | select Name, Length
$sizeKB = $file.Length/1KB
$sizeMB = $file.Length/1MB

Write-Host "`nFilename : " $file.Name "`nSize in KB : " $sizeKB "`nSize in MB : " $sizeMB 
