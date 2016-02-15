require 'watir-webdriver'
require 'test/unit'
require 'cucumber'

Given(/^a user goes to Barclay Card US$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "https://www.barclaycardus.com/"
end

When(/^they click to the NFL cards banner$/) do
  @browser.div(:id => "bottomImage").click
end

Then(/^website should return a list of NFL cards available$/) do
  @browser.div(:id => 'nfl-choose-your-team-popup').wait_until_present
end

And(/^User clicks on New York Giants team$/) do
  @browser.li(:id => 'giants').wait_until_present
  @browser.li(:id => 'giants').click
end

And(/^User checks the Benefits tab$/) do
  @browser.li(:class => 'benefits').wait_until_present
  @browser.li(:class => 'benefits').click
end

And(/^User goes to the Rewards section$/) do
  @browser.li(:class => 'rewards').wait_until_present
  @browser.li(:class => 'rewards').click
end

And(/^User looks at the FAQs before closing the browser$/) do
  @browser.li(:class => 'faqs').wait_until_present
  @browser.li(:class => 'faqs').click
  @browser.close
end

