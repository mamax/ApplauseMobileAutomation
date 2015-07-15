Feature: Lora Registration Form Field Validation BAT

Scenario: REG-1 Proper error message displayed for new user registration with blank first name 
	Given I open the Lora App and navigate to the create new user page
	When I click on the First Name field and Tab to the next field
	Then I should see the First Name Error Message
	
Scenario: REG-2 Proper error message displayed for new user registration with blank last name 
	Given I open the Lora App and navigate to the create new user page
	When I click on the Last Name field and Tab to the next field
	Then I should see the Last Name Error Message
	
Scenario: REG-4 Proper error message displayed for new user with invalid email address  
	Given I open the Lora App and navigate to the create new user page
	When I enter an invalid email and Tab to the next field
	Then I should see the Invalid Email Error Message
	
Scenario: REG-5 Proper error message displayed for new user with mismatched passwords   
	Given I open the Lora App and navigate to the create new user page
	When I enter mismatched passwords and Tab to the next field
	Then I should see the mismatched password Error Message
	