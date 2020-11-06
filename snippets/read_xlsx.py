file = "example.xls"
x1 = pd.ExcelFile(file) 
print(x1.sheet_names) 
df = x1.parse("Sheet1") 
print(df)
