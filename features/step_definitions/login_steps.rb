### GIVEN ###
Given /^I am not logged in$/ do
  visit logout_path
end

Given /^I am logged in$/ do
  create_owner
  login
end

Given /^I exist as a owner$/ do
  create_owner
end

Given /^I do not exist as an owner$/ do
  save_and_open_page
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
  visit logout_path
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
  visit '/'
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

Then /^I should be signed out$/ do
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