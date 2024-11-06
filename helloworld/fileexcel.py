import openpyxl

try:
    wb = openpyxl.load_workbook('D:\\demo\\read_append.xlsx')
    sheets = wb.sheetnames
    sh3 = wb['Sheet3']


#overall data

    for row in sh3['A1:B7']:
        for cell in row:
            print(cell.value)
except FileNotFoundError:
    print("file not found")



