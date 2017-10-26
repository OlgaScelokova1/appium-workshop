# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I am on welcome screen$/ do
 sleep(2)
 $driver.find_element(:xpath, '//*[@text="Transports"][@resource-id="com.testdevlab.notifyus:id/main_row_text"]').click
 sleep(2)
 print $driver.find_element(:xpath, '//*[@text="Vieglie auto"][@resource-id="com.testdevlab.notifyus:id/category_name"]').text
 sleep(2)
 $driver.press_keycode(4)
 sleep(2)
 $driver.find_element(:xpath, '//*[@class="android.widget.ImageButton"]').click
 sleep(2)
 $driver.find_element(:xpath, '//*[@resource-id="com.testdevlab.notifyus:id/item_name"][@text="Meklēšanas filtri"]').click
 sleep(2)
end
