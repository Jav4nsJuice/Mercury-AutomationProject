Feature: Mercury Tours Login Feature
  In order to get involved with the Mercury website 
  As a registered customer
  I want to login into the website

@1
Scenario: Login Successfully with a User
    Given a user goes to Mercury login page
    And I enter my user and password
    When I press the submit button
    Then the Login Successfully message is displayed

@2
Scenario: Login Unsuccessful
    Given a user goes to Mercury login page
    And I enter a wrong user and-or password
    When I press the submit button
    Then the Enter your userName and password correct message is displayed