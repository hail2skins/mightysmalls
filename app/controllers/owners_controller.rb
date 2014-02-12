class OwnersController < ApplicationController


	def new
		@owner = Owner.new
	end

	def create
		@owner = Owner.new(owner_params)

		respond_to do |format|
			if @owner.save	
				format.html { redirect_to root_path, notice: 'Owner was successfully created.' }

			else
				format.html { render action: 'new' }
			end
		end
	end


	private

		def owner_params
			params.require(:owner).permit(:first_name, 
																		:middle_name,
																		:last_name, 
																		:email, 
																		:password, 
																		:password_confirmation)
		end	

end