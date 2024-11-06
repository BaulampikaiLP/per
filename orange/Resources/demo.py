from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import openpyxl


# Function to read data from an Excel sheet
def read_data_from_excel(file_path, sheet_name, row, col):
    """
    This function fetches a specific value from the Excel sheet.
    """
    workbook = openpyxl.load_workbook(file_path)
    sheet = workbook[sheet_name]
    return sheet.cell(row=row, column=col).value


# Function to open and maximize browser
def open_browser(url):
    """
    Opens the browser and maximizes the window.
    """
    driver = webdriver.Chrome()
    driver.get(url)
    driver.maximize_window()
    time.sleep(3)
    return driver


# Function to close the browser
def close_browser(driver):
    """
    Closes the browser.
    """
    driver.quit()


# Function for registration
def register(driver, excel_path):

    # Click on Register link
    driver.find_element(By.LINK_TEXT, "Register").click()
    time.sleep(2)

    # Fill out the registration form
    driver.find_element(By.ID, "gender-female").click()

    # Read data from Excel
    firstname = read_data_from_excel(excel_path, "Sheet1", 2, 1)
    lastname = read_data_from_excel(excel_path, "Sheet1", 2, 2)
    email = read_data_from_excel(excel_path, "Sheet1", 2, 3)
    password = read_data_from_excel(excel_path, "Sheet1", 2, 4)
    confirm_password = read_data_from_excel(excel_path, "Sheet1", 2, 5)

    # Input data into registration fields
    driver.find_element(By.ID, "FirstName").send_keys(firstname)
    driver.find_element(By.ID, "LastName").send_keys(lastname)
    driver.find_element(By.ID, "Email").send_keys(email)
    driver.find_element(By.ID, "Password").send_keys(password)
    driver.find_element(By.ID, "ConfirmPassword").send_keys(confirm_password)

    # Click on Register button
    driver.find_element(By.ID, "register-button").click()


# Function for login and performing actions
def login(driver, excel_path):
    """
    Automates the login process and performs actions after logging in.
    """
    # Click on Login link
    driver.find_element(By.LINK_TEXT, "Log in").click()
    time.sleep(5)

    # Read email and password from Excel
    email = read_data_from_excel(excel_path, "Sheet1", 2, 3)
    password = read_data_from_excel(excel_path, "Sheet1", 2, 4)

    # Enter login details
    driver.find_element(By.ID, "Email").send_keys(email)
    driver.find_element(By.ID, "Password").send_keys(password)

    # Click on Login button
    driver.find_element(By.XPATH, "//input[@value='Log in']").click()
    time.sleep(3)

    # Perform search and add item to cart
    search_term = read_data_from_excel(excel_path, "Sheet2", 2, 1)
    driver.find_element(By.ID, "small-searchterms").send_keys(search_term)
    driver.find_element(By.XPATH, "//input[@type='submit' and @value='Search']").click()

    time.sleep(2)
    driver.find_element(By.XPATH, "//h2/a[contains(text(),'Fiction')]").click()
    time.sleep(5)
    driver.find_element(By.XPATH, '//*[@id="add-to-cart-button-45"]').click()
    time.sleep(5)

    # Log out
    driver.find_element(By.LINK_TEXT, "Log out").click()


# Main function to execute the registration and login
if __name__ == "__main__":
#def perform_actions():

    url = "https://demowebshop.tricentis.com/"
    excel_path = "C://Users//baula//PycharmProjects//orange//Resources//login_Book1.xlsx"

    # Open the browser
    driver = open_browser(url)

    # Perform registration
    register(driver, excel_path)

    # Perform login and actions
    login(driver, excel_path)

    # Close the browser
    close_browser(driver)
