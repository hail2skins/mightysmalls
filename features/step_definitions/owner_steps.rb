include Warden::Test::Helpers
Warden.test_mode!

### GIVEN ###
Given /^I am not logged in$/ do
  logout(:owner)
end

Given /^I am logged in$/ do
  create_owner
  login
end

Given /^I exist as a owner$/ do
  create_owner
end

Given /^I do not exist as an owner$/ do
  create_visitor
  delete_owner
end

Given /^I exist as an unconfirmed owner$/ do
  create_unconfirmed_owner
end

### WHEN ###
When /^I login with valid credentials$/ do
  create_visitor
  login
end

When /^I logout$/ do
  click_link("Logout")
end

When /^I sign up with valid owner data$/ do
  create_visitor
  sign_up
end

When /^I sign up with an invalid email$/ do
  create_visitor
  @visitor = @visitor.merge(email: "notanemail")
  sign_up
end

When /^I sign up without a password confirmation$/ do
  create_visitor
  @visitor = @visitor.merge(password_confirmation: "")
  sign_up
end

When /^I sign up without a password$/ do
  create_visitor
  @visitor = @visitor.merge(password: "")
  sign_up
end

When /^I sign up with a mismatched password confirmation$/ do
  create_visitor
  @visitor = @visitor.merge(password_confirmation: "changeme123")
  sign_up
end

When /^I return to the site$/ do
  visit owner_path(@owner)
end

When /^I login with a wrong email$/ do
  @visitor = @visitor.merge(email: "wrong@example.com")
  login
end

When /^I login with a wrong password$/ do
  @visitor = @visitor.merge(password: "wrongpass")
  login
end

### THEN ###
Then /^I should be signed in$/ do
  page.should have_content "Logout"
  page.should_not have_content "Sign up"
  page.should_not have_content "Login"
end

Then /^I should be logged out$/ do
  page.should have_content "Sign up"
  page.should have_content "Login"
  page.should_not have_content "Logout"
end

Then /^I see an unconfirmed account message$/ do
  page.should have_content "You have to confirm your account before continuing."
end

Then /^I see a successful login message$/ do
  page.should have_content "Signed in successfully."
end

Then /^I should see a successful sign up message$/ do
  page.should have_content "Welcome! You have signed up successfully."
end

Then /^I should see an invalid email message$/ do
  page.should have_content "Email is invalid"
end

Then /^I should see a missing password message$/ do
  page.should have_content "Password can't be blank"
end

Then /^I should see a missing password confirmation message$/ do
  page.should have_content "Password doesn't match confirmation"
end

Then /^I should see a mismatched password message$/ do
  page.should have_content "Password doesn't match confirmation"
end

Then /^I should see a signed out message$/ do
  page.should have_content "Signed out successfully."
end

Then /^I see an invalid login message$/ do
  page.should have_content "Invalid email or password."
end

Then /^I should see an account edited message$/ do
  page.should have_content "You updated your account successfully."
end

Then /^I should see my name$/ do
  create_owner
  page.should have_content @owner.name
end

#added by showing_owner.feature

Then(/^I am at my owner edit page$/) do
  page.should have_title("Edit #{@owner.name}")
end

Given(/^I can see my name in the title$/) do
  page.should have_title("#{@owner.name}")
end

Given(/^I can see my name in a link$/) do
  page.should have_link("#{@owner.name}")
end

#added by editing_owner.feature

Given(/^I am at my owner profile page$/) do
  assert page.current_path == owner_path(@owner)
end

Then(/^I should see a form to edit my information$/) do
  page.should have_css('form', text: "")
end

Then(/^I should see content "(.*?)"$/) do |content|
  page.should have_content(content)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |form, data|
  page.fill_in form, with: data
end

When(/^when I fill in "(.*?)" with current password$/) do |form|
  page.fill_in form, with: @owner.password
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

#added by signing_up.feature

Given(/^I should see "Sign up" in the title$/) do
  page.should have_title("Sign up")
end

Then(/^as a new "Owner" signing up there is a form to fill in my information$/) do
  page.should have_css('form', text: "")

  fill_in('Email', with: 'test@test.com')
  fill_in('Password', with: 'password', match: :prefer_exact)
  fill_in('Confirm Password', with: 'password', match: :prefer_exact)
  fill_in('First name', with: 'Someone')
  fill_in('Middle name', with: '')
  fill_in('Last name', with: 'New')
end

Then(/^when I click the "(.*?)" button$/) do |button|
  click_button(button)
end

Then(/^I should be created successfully$/) do
  page.should have_content("Welcome! You have signed up successfully.")
end

Then(/^be taken to my owner profile page$/) do
  page.should have_title("Someone New")
  page.should have_link("Someone New")
  page.should have_content("test@test.com")
end

Then(/^I should be informed I need to add a business$/) do
  page.should have_content("You have not yet provided us information about your business.")
end

When(/^I should see a form to login$/) do
  page.should have_css('form', text: "")
end

Then(/^I should see the title "(.*?)"$/) do |title|
  page.should have_title(title)
end

#deleting_owners.feature
Then(/^a prompt asks "(.*?)"$/) do |content|
  page.driver.console_messages.first
end

When(/^I cancel popup$/) do
  page.driver.accept_js_confirms!
end

Then(/^I am at the home page$/) do
  page.should have_title("Mighty Smalls")
end

When(/^I fill in "(.*?)" with my owner email$/) do |email|
  page.fill_in email, with: @owner.email
end

When(/^I fill in "(.*?)" with my owner password$/) do |password|
  page.fill_in password, with: @owner.password
end