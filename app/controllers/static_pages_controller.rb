class StaticPagesController < ApplicationController
	def home
		if owner_signed_in?
			redirect_to current owner
		else
			render 'static_pages/home'
		end
	end

	def about
	end

	def help
	end

	def contact
	end
	
end