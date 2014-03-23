class Category < ActiveRecord::Base
	belongs_to :categorizations, polymorphic: true
end