class UsersController < ApplicationController
	before_filter :admin_user, only: [:index]
	before_filter :not_logged_in_user, only: [:new, :create]

  def index
  	@users = User.all
  end

  def show
		if current_user = params[:id] || current_user.admin
    	@user = User.find(params[:id])
		else
			redirect_to root_path
		end
  end

  def new
    	@user = User.new
  end

  def create
	  @user = User.new(params[:user])
	  if @user.save
			session[:user_id] = @user
	    redirect_to root_path, :notice => "Successfully created user."
	  else
	    render :action => 'new'
	  end
  end

  def edit
		if params[:id] == current_user || current_user.admin
    	@user = User.find(params[:id])
		else
			redirect_to root_path
		end
  end

  def update
		if params[:id] == current_user || current_user.admin
		  @user = User.find(params[:id])
		  if @user.update_attributes(params[:user])
		    redirect_to root_path, :notice  => "Successfully updated user."
		  else
		    render :action => 'edit'
		  end
		else
			redirect_to root_path
		end
  end

  def destroy
		if params[:id] == current_user || current_user.admin
		  @user = User.find(params[:id])
		  @user.destroy
		  redirect_to root_path, :notice => "Successfully destroyed user."
		else
			redirect_to root_path
		end
  end
end
