Feature: Visitor Visiting
	In order to see the home page at "http://www.mightysmalls.com"
	As a visitor who has not signed up
	I should see a default landing page with basic information about the site
	that allows me to sign up and sign in, learn about the site, seek help 
	and make contact and learn about the pricing.

	Background: Visiting the home page
		Given I visit "http://www.mightysmalls.com" as a visitor

	Scenario: Viewing the home page
		Given I can see the site is in "ALPHA" testing
		And I can see a link to "Sign up now!"
		And I can see a header with the "Mighty Smalls" name
		And I can see a footer with "Hamco Internet Solutions"
		And I can see navigation links for help, about, contact and sign in
	
		Scenario: Visiting the about page
			Given I click the "About" link
			Then I should see information about the "cost effective client relationship management system"

		Scenario: Visiting the help page
			Given I click the "Help" link
			Then I should see information about utilizing the site

		Scenario: Visiting the contact page
			Given I click the "Contact" link
			Then I should how to contact Mighty Smalls support for assistance

