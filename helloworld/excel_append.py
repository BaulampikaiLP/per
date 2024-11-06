import openpyxl

# Load the existing Excel workbook
wb = openpyxl.load_workbook('D:\\demo\\read.xlsx')
sh1 = wb['Sheet1']
# Append a new row to the sheet
sh1.append(['New Value 1', 'New Value 2', 'New Value 3'])


wb.save('D:\\demo\\read_append.xlsx')

print("Data appended to the Excel file.")
