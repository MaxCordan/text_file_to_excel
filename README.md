# text_file_to_excel
Powershell script for parsing text file to table

Script made for a text file's format:
id1=login1, value1, value4
id2=login2, value1, value5
id3=login3, value2, value4
id4=login4, value1, value6
id5=login5, value2, value6
id6=login6, value3, value5
id7=login7, value1, value4
id8=login7, value3, value6
...

Script makes table in Excel:
       |         |          |          |
-------+---------+----------+----------+---------
   1   |  login1 |  value1  |  value4  |
-------+---------+----------+----------+---------
   2   |  login2 |  value1  |  value4  |
-------+---------+----------+----------+---------
   3   |  login3 |  value2  |  value4  |
-------+---------+----------+----------+---------
   4   |  login4 |  value1  |  value4  |
-------+---------+----------+----------+---------
   5   |  login5 |  value2  |  value4  |
-------+---------+----------+----------+---------
   6   |  login6 |  value3  |  value4  |
-------+---------+----------+----------+---------
   7   |  login7 |  value1  |  value4  |
-------+---------+----------+----------+---------
   8   |  login8 |  value3  |  value4  |
-------+---------+----------+----------+---------
...

You can specifiy from which row you want script to add data using $rowStart=2 variable.
Also you can specify how many coloms you want script to fill in file if script using $colomnCount=4 variable
