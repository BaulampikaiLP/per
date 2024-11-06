import openpyxl


def load_excel(file_path):
    workbook = openpyxl.load_workbook(file_path)
    sheet = workbook.active
    data = []

    for row in sheet.iter_rows(min_row=2, values_only=True):
        data.append([row[0], row[1]])

    return data


def perform_login(excel_path):
    sheet = load_excel(excel_path)
    return sheet