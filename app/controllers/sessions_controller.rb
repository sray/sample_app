class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:sessions][:email].downcase)
		if user && user.authenticate(params[:sessions][:password])
			# render profile page

		else
			# render sign in page again and show errors
			flash[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		
	end
end
