require 'spec_helper'

describe "static_pages/home.html.erb" do
	it "expects the controller path" do
		expect(controller.request.path_parameters[:controller]).to eq("static_pages")
		expect(controller.controller_path).to eq("static_pages")
	end
end