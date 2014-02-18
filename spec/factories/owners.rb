# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
	factory :owner do |f|
		f.first_name 'Factory'
		f.last_name 'Girl'
		f.email 'factory@girl.com'
		f.password 'password'
		f.password_confirmation 'password'
		admin false
	end
end