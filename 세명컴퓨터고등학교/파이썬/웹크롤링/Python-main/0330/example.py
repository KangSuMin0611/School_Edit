from selenium import webdriver
import time
from selenium.webdriver.common.keys import Keys
import pyperclip

driver = webdriver.Chrome('C:\chromedriver.exe')
driver.get('https://www.naver.com/')
time.sleep(1)

login_btn = driver.find_element_by_class_name('link_login')
login_btn.click()
time.sleep(1)

naver_id = driver.find_element_by_name('id')
naver_pw = driver.find_element_by_name('pw')

naver_id.click()
pyperclip.copy('soomin7244')
naver_id.send_keys(Keys.CONTROL,'v')
time.sleep(1)

naver_pw.click()
pyperclip.copy('s72443834~')
naver_pw.send_keys(Keys.CONTROL,'v')
time.sleep(1)

driver.find_element_by_xpath('//*[@id="frmNIDLogin"]/fieldset/input').click()
time.sleep(1)

driver.find_element_by_xpath('//*[@id="new.dontsave"]').click()

driver.get("https://mail.naver.com/")
html=driver.page_source
soup = bs(html, 'html.parser')

title_list = soup.find_all('div','name')

for title in title_list:
    print(title.text)