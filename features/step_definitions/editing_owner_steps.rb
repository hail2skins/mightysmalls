Given(/^I am at my owner profile page$/) do
  page.should have_title(@owner.name)
  page.should have_link(@owner.name)
  page.should have_content(@owner.email)
end

Then(/^I should see a form to edit my information$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
