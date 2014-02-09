Given(/^I am at the home page of the site as a guest$/) do
  visit '/'
end

Given(/^I can see the site is in alpha testing$/) do
  page.should have_content("ALPHA")
end

Given(/^I can see a link to "Sign up now!"$/) do
  page.should have_link("Sign up now!")
end
