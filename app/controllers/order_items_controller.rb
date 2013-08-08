# -*- encoding : utf-8 -*-
class OrderItemsController < ApplicationController


	def index
		@orderItems = OrderItems.all
	end

	def new
		@orderItem = OrderItem.new
	end

	def create
		@orderItem = OrderItem.new(params[:orderitems])
		if @orderItem.save
			redirect_to root_path, notice: new_string("produkt do listy.")
		else
			render action: 'new'
		end
	end

	def edit
		@orderItem = OrderItem.find(params[:id])
	end

	def update
		@orderItem = OrderItems.find(params[:id])
		if @orderItem.update_attributes(params[:orderItem])
			redirect_to root_path, notice: edit_string("produkt z listy.")
		else
			render action: 'edit'
		end
	end

	def destroy
		@orderItem = OrderItem.find(params[:id])
		@orderItem.destroy
		redirect_to orders_url, notice: destroy_string("produkt z listy.")
	end


end
