Given(/^I am at the home page of the site as a guest$/) do
  visit '/'
end

Given(/^I can see the site is in alpha testing$/) do
  page.should have_content("ALPHA")
end

Given(/^I can see a link to sign up$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I can see links to help, about and contact$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can click help, about and contact links from the home page$/) do
  pending # express the regexp above with the code you wish you had
end