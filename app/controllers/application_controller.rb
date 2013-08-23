# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery
	helper_method :current_user
	
  before_filter :set_default_language

	def load_order
		@order = Order.find_or_initialize_by_id(session[:order_id], status: "nowy", user_id: current_user.id)
		if @order.new_record?
		  @order.save!
		  session[:order_id] = @order.id
		end
	end

	private
    def set_default_language
      if cookies[:language] == nil
        cookies[:language] = 'pl'
      end
      I18n.locale = cookies[:language]
    end

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
			if current_user == nil || !current_user.admin
				redirect_to root_path
			end
		end

		def orders
			@orders = current_user.orders
		end
end
