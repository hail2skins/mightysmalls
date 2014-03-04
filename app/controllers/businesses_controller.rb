class BusinessesController < ApplicationController
	before_action :get_owner
	before_action :set_business, only: [:show]


	def new
		#@owner = Owner.find(params[:owner_id])
		@business = @owner.businesses.build
	end

	def create
		@business = @owner.businesses.new(business_params)

		respond_to do |format|
			if @business.save
				format.html { redirect_to current_owner, notice: 'Congratulations.  Your business has been created.' }
			else
				format.html { render action: 'new' }
			end
		end
	end

	def show
	end


	private

			def set_business
				@business = @owner.businesses.find(params[:id])
			end

			def business_params
				params.require(:business).permit(:name, :description)
			end

			def get_owner
				@owner = Owner.find(params[:owner_id])
			end

end