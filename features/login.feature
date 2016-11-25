# encoding: utf-8
Feature: Login form
	As a user
	I would like to login
	Then I could use some features and protect my account

	Scenario: Successful login
		Given I access the login page
    When I fill in the username field with "tomsmith"
    And I fill in the password field with "SuperSecretPassword!"
    And I click the submit button
    Then I should be on the secure page