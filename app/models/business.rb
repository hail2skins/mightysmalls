# == Schema Information
#
# Table name: businesses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  deleted_at  :datetime
#  created_at  :datetime
#  updated_at  :datetime
#  owner_id    :integer
#

class Business < ActiveRecord::Base
	acts_as_paranoid
	
	belongs_to :owner
	has_one :category, as: :categorizations

	validates :owner_id, presence: true
	validates :name, presence: true
	
end
