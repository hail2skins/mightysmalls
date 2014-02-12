Then(/^I should see "Sign up" in the title$/) do
  page.should have_title("Sign up")
end

Then(/^as a new "Owner" signing up there is a form to fill in my information$/) do
  page.should have_css('form', text: "")

  fill_in('First name', with: 'Art')
  fill_in('Middle name', with: '')
	fill_in('Last name', with: 'Mills')
	fill_in('Email', with: 'test@test.com')
	fill_in('Password', with: 'password')
	fill_in('Confirm Password', with: 'password')
end

Then(/^when I click the "(.*?)" button$/) do |button|
  click_button(button)
end

Then(/^I should be created successfully and taken to my owner page$/) do
  page.should have_content("Owner was successfully created.")
end