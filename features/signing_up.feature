Feature: Signing Up	
	In order to track my customers and utilize the Mighty Smalls CMS
	As an owner of a business with customers
	I want to visit a page to sign up

	Background: Visiting the sign up page
		Given I am at the home page of the site

	  Scenario: Signing up
	  	When I click the "Sign up now!" link
	  	Then I should see "Sign up" in the title
	  	And as a new "Owner" signing up there is a form to fill in my information
	  	And when I click the "Create my account" button
	  	Then I should be created successfully
	  	And be taken to my owner profile page
	  	And I should be informed I need to add a business

	  Scenario: Checking the Login link
	  	And I see a link to "Login"
	  	When I click the "Login" link
	  	Then I should see a form to login
	  	And I should see the title "Login"