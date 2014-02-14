Then(/^I should see "Sign up" in the title$/) do
  page.should have_title("Sign up")
end

Then(/^as a new "Owner" signing up there is a form to fill in my information$/) do
  page.should have_css('form', text: "")

  fill_in('Email', with: 'test@test.com')
  fill_in('Password', with: 'password', match: :prefer_exact)
  fill_in('Confirm Password', with: 'password', match: :prefer_exact)
  fill_in('First name', with: 'Someone')
  fill_in('Middle name', with: '')
	fill_in('Last name', with: 'New')
end

Then(/^when I click the "(.*?)" button$/) do |button|
  click_button(button)
end

Then(/^I should be created successfully$/) do
  page.should have_content("Welcome! You have signed up successfully.")
end

Then(/^be taken to my owner profile page$/) do
  @owner = Owner.create!(email: 'testing@testing.testing', password: 'password', password_confirmation: 'password', first_name: "Hello", last_name: "There")
  should have_title(@owner.name)
  should have_link(@owner.name)
end

Then(/^I should be informed I need to add a business$/) do
  page.should have_content("You have not yet provided us information about your business.")
end
