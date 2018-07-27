$content=Get-Content "D:\ccs.txt"

$excel = New-Object -ComObject excel.application 
$excel.visible = $True
$workbook = $excel.Workbooks.Add()
$uregwksht= $workbook.Worksheets.Item(1) 
$uregwksht.Name = 'The name of sheet you choose'

$rowStart=2
$colomnCount=4
$splitChars="=," #Chars which separate values

for ($i=$rowStart; $i -le $content.Count+$rowStart-1; $i++)
{
    $row=$i
    $uregwksht.Cells.Item($row,1)= $content[$i-$rowstart].Split($splitChars).Trim().TrimStart("id")[0]
    for ($q=2; $q -le $colomnCount; $q++)
    {
        $colomn=$q
        $uregwksht.Cells.Item($i,$colomn)= $content[$i-$rowstart].Split($splitChars).Trim()[$q-1]
    }
}
