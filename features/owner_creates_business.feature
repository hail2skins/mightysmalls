Feature: Owner creates business
	In order to utilize the site to track my customers
	as a business owner I must create a business
	I want to be able to add a business when I am logged in

	Background: Loggin in
		Given I am logged in
  	And I am at my owner profile page

  	Scenario: Owner adds first business
		  And I should see content "Business Information"
		  And I should see content "You have not yet provided us information about your business."
		  And I can see a link to "Add your business now!"
  		When I click the "Add your business now!" link
  		Then I can see a form to add business information
  		