Feature: Owner shows business
	In order to see and edit my business or businesses
	as a business owner who has submitted at least one business
	I should be able to see details about my business
	and I should be able to see a list of the businesses I own

	Background: Log in and create business
	  Given I am logged in
	  And I am at my owner profile page
	  And I have created one business
  	
  	Scenario: Showing my business page
   		And I can see my business name in a link
  		When I click the link with my business name
  		Then I am at my business profile page
  		And I should see my business name in the title
  		And I should see a link to "Back to owner page"
  		When I click the "Back to owner page" link
  		Then I am at my owner profile page
