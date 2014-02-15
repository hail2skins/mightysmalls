class OwnersController < ApplicationController
  before_action :set_owner, only: [:show, :edit, :update, :destroy]

	def new
		@owner = Owner.new
	end

	def show
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
      params.require(:owner).permit(:first_name, :last_name, :middle_name, :email, :password, :password_confirmation)
    end




		def set_owner
			@owner = Owner.find(params[:id])
		end	



end