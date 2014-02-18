When(/^I click the "(.*?)" link$/) do |link|
  click_link link
end

Given(/^I see a link to "(.*?)"$/) do |link|
  page.should have_link(link)
end