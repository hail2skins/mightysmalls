Given(/^I visit "(.*?)" as a visitor$/) do |arg1|
  visit '/'
end

Given(/^I can see the site is in "(.*?)" testing$/) do |content|
  page.should have_content("ALPHA")
end

Given(/^I can see a link to "(.*?)"$/) do |arg1|
  page.should have_content("Sign up now!")
end

Given(/^I can see a header with the "(.*?)" name$/) do |arg1|
  page.should have_css("header", text: "Mighty Smalls")
end

Given(/^I can see a footer with "(.*?)"$/) do |arg1|
  page.should have_css("footer", text: "Hamco Internet Solutions")
end

Given(/^I can see navigation links for help, about, contact and sign in$/) do
  h = "Help"
  a = "About"
  c = "Contact"
  s = "Login"

  [h,a,c,s].each do |link|
  	page.should have_link(link)
  end
end

Given(/^I am at the home page of the site$/) do
  visit '/'
end

Then(/^I should see information about the "cost effective client relationship management system"$/) do
  page.should have_content("cost effective client relationship management system ")
end

Then(/^I should see an "h1" with the world "Help"/) do
  page.should have_css('h1', text: "Help")
end

Then(/^I should see "Contact" in the title$/) do
  page.should have_title("Contact")
end