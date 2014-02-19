Feature: Editing Owner
  As a registered Owner of the website
  I want to edit my Owner profile
  so I can change my information

  Background: Logging in
  	Given I am logged in
  	And I am at my owner profile page

  Scenario: I edit my email successfully
  	And I can see a link to "Edit"
  	When I click the "Edit" link
    Then I should see a form to edit my information
    And I should see content "leave it blank if you don't want to change it"
    And I should see content "we need your current password to confirm your changes"
    When I fill in "Email" with "anothertest@testing.com"
    And when I fill in "Current password" with current password
    And when I click the "Update" button
    Then I should see "You updated your account successfully."
    And I am at my owner profile page

    Scenario: I edit my first and last names successfully
      When I click the "Edit" link
      And I fill in "First name" with "Roaster"
      And I fill in "Last name" with "McRoasterton"
      And when I fill in "Current password" with current password
      And when I click the "Update" button
      Then I should see "You updated your account successfully."
      And I am at my owner profile page

    Scenario: I edit my password successfully
      When I click the "Edit" link
      And I fill in "Password" with "password2"
      And I fill in "Password confirmation" with "password2"
      And when I fill in "Current password" with current password
      And when I click the "Update" button
      Then I should see "You updated your account successfully."
      And I am at my owner profile page
