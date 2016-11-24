# encoding: utf-8
Feature: Login form
	As a user
	I would like to login
	Then I could use some features and protect my account

	Scenario: Successful login
		Given I access the login page
    When I fill in the username field
    And I fill in the username field