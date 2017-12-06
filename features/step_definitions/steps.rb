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


Given /^I am on create filter page$/ do
  @tests.filters_test.close_intro
end


Given /^I open transports filter params$/ do
  @tests.filters_test.open_filter_params_transports
end

Given /^I submit transports filter/ do
  @tests.filters_test.submit_filter_transports
end

Given /^I go to Meklesanas filtri page/ do
  @tests.filters_test.open_meklesanas_page
end

Given /^I delete saved transports filter/ do
  @tests.filters_test.delete_transports_filter
end

Given /^I open vakances filter params/ do
  @tests.filters_test.open_filter_params_vakances
end

Given /^I submit vakances filter/ do
  @tests.filters_test.submit_filter_vakances
end

Given /^I delete saved vakances filter/ do
  @tests.filters_test.delete_filter_vakances
end

Given /^I open ipasumi filter params/ do
  @tests.filters_test.open_filter_params_ipasumi
end

Given /^I submit ipasumi filter/ do
  @tests.filters_test.submit_filter_ipasumi
end

Given /^I delete saved ipasumi filter/ do
  @tests.filters_test.delete_filter_ipasumi
end