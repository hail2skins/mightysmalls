class BusinessesController < ApplicationController

	def new
		@owner = Owner.find(params[:owner_id])
		@business = @owner.businesses.build
	end

end