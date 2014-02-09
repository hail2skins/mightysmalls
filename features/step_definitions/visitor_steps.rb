Given(/^I visit "(.*?)" as a visitor$/) do |arg1|
  visit '/'
end

Given(/^I can see the site is in "(.*?)" testing$/) do |arg1|
  page.should have_content("ALPHA")
end

Given(/^I can see a link to "(.*?)"$/) do |arg1|
  page.should have_content("Sign up now!")
end

Given(/^I can see a header with the "(.*?)" name$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I can see a footer with "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I can see navigation links for help, about, contact and sign in$/) do
  pending # express the regexp above with the code you wish you had
end