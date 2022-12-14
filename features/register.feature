Feature: Mercury Tours Verify Registration
  In order to login successfully
  As a registered customer
  I want to registrate properly to the Mercury website

Scenario: Register a user on site        
	Given I am on the Mercury Tours register page
	When I enter in the First Name Field the text Pepito
    When I enter in the Last Name Field the text Perez
    When I enter in the Phone Field the text 1234-567-12
    When I enter in the Email Field the text pepe@pepito.com
    When I enter in the Address Field the text Av. America #123
    When I enter in the City Field the text Cochabamba
    When I enter in the State-Province Field the text Cochabamba
    When I enter in the Postal Code Field the text 0000
    When I enter in the Country Field the text BOLIVIA
    When I enter in the User Name Field the text Pepito
    When I enter in the Password Field the text 1234
    When I enter in the Confirm Password Field the text 1234
	And send my registration form
	Then the Note: Your user name is Pepito. message is been displayed


  