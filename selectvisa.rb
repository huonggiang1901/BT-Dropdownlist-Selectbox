require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://www.practiceselenium.com/check-out.html'
options = driver.find_element(id: 'card_type')
card = Selenium::WebDriver::Support::Select.new(options)
card.select_by(:text, "Visa")
sleep 2
driver.quit