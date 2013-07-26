class SessionsController < ApplicationController
	def new
	
	end

	def create
		user = User.find_by_login(params[:session][:login].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user
      redirect_to root_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end

end
