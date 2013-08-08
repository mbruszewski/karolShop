# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

class ApplicationController < ActionController::Base
  	protect_from_forgery
	helper_method :current_user
	

	def load_order
		@order = Order.find_or_initialize_by_id(session[:order_id], status: "nowy", user: current_user)
		if @order.new_record?
		  @order.save!
		  session[:order_id] = @order.id
		end
	end

	
	def new_string(string)
		return "Pomyślnie dodano " + string
	end

	def edit_string(string)
		return "Pomyślnie edytowano " + string
	end

	def destroy(string)
		return "Pomyślnie usunięto " + string
	end
	



	private
		def current_user
		  @current_user ||= User.find(session[:user_id]) if session[:user_id]
		end

		def logged_in_user
			if current_user == nil
				redirect_to root_path
			end
		end

		def not_logged_in_user
			if current_user != nil
				redirect_to root_path
			end
		end

		def admin_user
			logged_in_user
			if !current_user.admin
				redirect_to root_path
			end
		end

		def orders
			@order = current_user.orders
		end
end
