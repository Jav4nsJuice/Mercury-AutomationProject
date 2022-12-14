require_relative '../pages/login_page.rb'
 
Given(/^a user goes to Mercury login page$/) do
  @login_page = LoginPage.new(@browser)
  @login_page.visit_mercury_login_site
end
# And I enter my user and password
Given(/^I enter my user and password$/) do
    @login_page.username_box_element.wait_until(&:present?)
    @login_page.enter_username(ENV['USER'])
    @login_page.password_box_element.wait_until(&:present?)
    @login_page.enter_password(ENV['PSW'])
end

# And I enter a wrong user and-or password
Given(/^I enter a wrong user and-or password$/) do
    @login_page.username_box_element.wait_until(&:present?)
    @login_page.enter_username('Pepazo')
    @login_page.password_box_element.wait_until(&:present?)
    @login_page.enter_password('1234')
end

# When I press the submit button
When(/^I press the submit button$/) do
    @login_page.click_submit_button
end

# Then the login successfully message is displayed
Then(/^the ([^"]*) message is displayed$/) do |message|
    expect(@login_page.login_successful_present?(message)).to eql(true)
    @login_page.close
end