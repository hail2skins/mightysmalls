Given(/^I am at my owner profile page$/) do
  page.should have_title(@owner.name)
  page.should have_link(@owner.name)
  page.should have_content(@owner.email)
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

