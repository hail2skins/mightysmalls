Feature: Editing Owner
  As a registered Owner of the website
  I want to edit my Owner profile
  so I can change my information

  Scenario: I sign in and edit my account
    Given I am logged in
    When I edit my account details
    Then I should see an account edited message