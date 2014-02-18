Feature: Editing Owner
  As a registered Owner of the website
  I want to edit my Owner profile
  so I can change my information

  Background: Logging in
  	Given I am logged in
  	And I am at my owner profile page

  Scenario: I edit my account
  	And I can see a link to "Edit"
  	When I click the "Edit" link
    Then I should see a form to edit my information
    When I fill in "Email" with "anothertest@testing.com"
    And when I click the "Edit" button
    Then I should see "Account edited successfully"
