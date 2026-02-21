from selenium import webdriver
from selenium.webdriver.common.by import By
import time

options = webdriver.ChromeOptions()
options.add_experimental_option("prefs", {"credentials_enable_service": False, "profile.password_manager_enabled": False})
driver = webdriver.Chrome(options=options)
driver.get("http://the-internet.herokuapp.com/login")
time.sleep(1)
driver.find_element(By.ID, "username").send_keys("tomsmith")
driver.find_element(By.ID, "password").send_keys("Password!'")
driver.find_element(By.CSS_SELECTOR, "button[type='submit']").click()
time.sleep(2)
try:
    flash = driver.find_element(By.ID, "flash")
    print("Flash:", flash.text)
    print("Class:", flash.get_attribute("class"))
except Exception as e:
    print("Error:", e)
driver.quit()
