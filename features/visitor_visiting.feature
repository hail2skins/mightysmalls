Feature: Visitor Visiting
	In order to see the home page at "http://www.mightysmalls.com"
	As a visitor who has not signed up
	I should see a default landing page with basic information about the site
	that allows me to sign up.

	Scenario: Visiting the home page
		Given I visit "http://www.mightysmalls.com" as a visitor
		And I can see the site is in "ALPHA" testing
		And I can see a link to "Sign up now!"
		And I can see a header with the "Mighty Smalls" name
		And I can see a footer with "Hamco Internet Solutions"
		And I can see navigation links for help, about, contact and sign in
	