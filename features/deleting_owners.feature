Feature: Deleting Owners
	In order to quit the site.
	as an owner who wishes to delete.
	I should be able to cancel my account
	but the account should not actually be deleted.
	Rather, it should be soft deleted.

  Background: Logging in
  	Given I am logged in
  	And I am at my owner profile page

  	@javascript
  	Scenario: Cancelling my account
  	When I click the "Edit" link
  	Then I am at my owner edit page
  	And I can see a link to "Cancel my account"
  	When I click the "Cancel my account" link
 		Then a prompt asks "Are you sure?"
 		When I cancel popup
 		Then I am at the home page
 		And I should see "Bye! Your account was successfully cancelled. We hope to see you again soon."
 		And I can see a link to "Login"
 		When I click the "Login" link
 		Then I should see the title "Login"
 		When I fill in "Email" with my owner email
 		And I fill in "Password" with my owner password
 		When when I click the "Login" button
 		Then I should see "This account was deleted on"
