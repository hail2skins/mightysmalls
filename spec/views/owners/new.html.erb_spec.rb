require 'spec_helper'

describe "Owner pages" do
	subject { page }

  describe "owners/new.html.erb" do
  	before { visit signup_path }

  	it { should have_content('Sign up')}
  	it { should have_title('Sign up')}
  end
end

describe "signup" do
	before { visit signup_path }

	let(:submit) { "Create my account" }

	describe "with valid information" do
	  before do
			fill_in "First name", 						with: "Example"
			fill_in "Middle name", 						with: ""
			fill_in "Last name", 							with: "User"
			fill_in "Email", 									with: "user@example.com"
			fill_in "Password",								with: "password"
			fill_in "Confirm Password", 			with: "password"
		end

		it "should create an owner" do
			expect { click_button submit }.to change(Owner, :count).by(1)
		end
	end


	describe "signup with invalid information" do
		pending "work this out"
	end

end