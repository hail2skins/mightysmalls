require 'spec_helper'

describe "static_pages/home.html.erb" do
	it "expects the controller path" do
		expect(controller.request.path_parameters[:controller]).to eq("static_pages")
		expect(controller.controller_path).to eq("static_pages")
	end
end

describe "seeing the home page" do

	it "should see links to help, contact, about and sign in" do
		visit root_path
		page.should have_link('About', href: about_path)
		page.should have_link('Help', href: help_path)
		page.should have_link('Contact', href: contact_path)
		page.should have_link('Sign in', href: signin_path)
		page.should have_link('Sign up now!', href: signup_path)
	end
end

describe "visiting each link from the home page" do
	before { visit root_path }

	it "static_pages/help.html.erb" do
		visit help_path
		page.should have_title("Help")
	end

	it "static_pages/about.html.erb" do
		visit about_path
		page.should have_title("About")
	end

	it "static_pages/contact.html.erb" do
		visit contact_path
		page.should have_title("Contact")
	end

	it "owners/new.html.erb" do
		visit signup_path
		page.should have_css('form', text: "")
	end

	pending "signin stuff"
	
end
