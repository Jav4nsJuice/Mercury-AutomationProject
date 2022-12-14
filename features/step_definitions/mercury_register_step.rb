require_relative '../pages/login_page.rb'

# Given I am on the Mercury Tours register page
Given(/^I am on the Mercury Tours register page$/) do
  @register_page = RegisterPage.new(@browser)
  @register_page.visit_mercury_register_site
end

# When I enter in the First Name Field the text Pepito
When(/^I enter in the First Name Field the text ([^"]*)$/) do |input|
    @register_page.firstName_box_element.wait_until(&:present?)
    @register_page.enter_firstName(input)
end

When(/^I enter in the Last Name Field the text ([^"]*)$/) do |input|
    @register_page.lastName_box_element.wait_until(&:present?)
    @register_page.enter_lastName(input)
end

When(/^I enter in the Phone Field the text ([^"]*)$/) do |input|
    @register_page.phone_box_element.wait_until(&:present?)
    @register_page.enter_phone(input)
end

When(/^I enter in the Email Field the text ([^"]*)$/) do |input|
    @register_page.userName_box_element.wait_until(&:present?)
    @register_page.enter_userName(input)
end

When(/^I enter in the Address Field the text ([^"]*)$/) do |input|
    @register_page.address_box_element.wait_until(&:present?)
    @register_page.enter_address(input)
end

When(/^I enter in the City Field the text ([^"]*)$/) do |input|
    @register_page.city_box_element.wait_until(&:present?)
    @register_page.enter_city(input)
end

When(/^I enter in the State-Province Field the text ([^"]*)$/) do |input|
    @register_page.state_box_element.wait_until(&:present?)
    @register_page.enter_state(input)
end

When(/^I enter in the Postal Code Field the text ([^"]*)$/) do |input|
    @register_page.postalCode_box_element.wait_until(&:present?)
    @register_page.enter_postalCode(input)
end

When(/^I enter in the Country Field the text BOLIVIA$/) do 
    @register_page.enter_country
end

When(/^I enter in the User Name Field the text ([^"]*)$/) do |input|
    @register_page.email_box_element.wait_until(&:present?)
    @register_page.enter_email(input)
end

When(/^I enter in the Password Field the text ([^"]*)$/) do |input|
    @register_page.password_box_element.wait_until(&:present?)
    @register_page.enter_password(input)
end

When(/^I enter in the Confirm Password Field the text ([^"]*)$/) do |input|
    @register_page.confirmPassword_box_element.wait_until(&:present?)
    @register_page.enter_confirmPassword(input)
end

# Then the Note: Your user name is Pepito. message is been displayed
Then(/^the ([^"]*) message is been displayed$/) do |message|
    expect(@register_page.login_successful_present?(message)).to eql(true)
    @register_page.close
end

# And send my registration form
When(/^send my registration form$/) do
    @register_page.click_register_button
end