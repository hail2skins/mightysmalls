Then(/^I should see "Sign up" in the title$/) do
  page.should have_title("Sign up")
end

Then(/^as a new "Owner" signing up there is a form to fill in my information$/) do
  page.should have_css('form', text: "")
end

Then(/^when I submit my information$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be created successfully and taken to my owner page$/) do
  pending # express the regexp above with the code you wish you had
end