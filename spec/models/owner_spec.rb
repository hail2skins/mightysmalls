require 'spec_helper'

describe Owner do
  before { @owner = Owner.new(first_name: "Example", 
  														middle_name: "", 
  														last_name: "User", 
  														email: "user@example.com", 
  														password: "password", 
  														password_confirmation: "password", 
  														admin: false)}

  it { should respond_to(:first_name)}
  it { should respond_to(:middle_name)}
  it { should respond_to(:last_name)}
  it { should respond_to(:email)}
  it { should respond_to(:password_digest)}

  pending "Do much more in this test"

  describe '#name' do
    it "should combine first_name and last_name" do
      expect(@owner.name).to eq("Example User")
    end
  end

end
