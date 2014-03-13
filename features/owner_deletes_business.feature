Feature: Owner deletes business
	In order to remove a business I no longer own
	as an owner with a registered business
	I should be able to delete my business,
	but, the business won't really delete.  Rather,
	it will soft_delete so it is only viewable to admins.

		Background: Logging in and all that jazz
		Given I am logged in
	  And I am at my owner profile page
	  And I have created one business
	  And I visit my business profile page

	  Scenario: I successfully soft delete a business