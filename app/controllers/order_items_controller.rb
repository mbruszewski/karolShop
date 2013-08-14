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
			redirect_to root_path, notice: t("flash.new", item: t("controller.add_order_item"))
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
			redirect_to root_path, notice: t("flash.edit", item: t("controller.order_item"))
		else
			render action: 'edit'
		end
	end

	def destroy
		@orderItem = OrderItem.find(params[:id])
		@orderItem.destroy
		redirect_to orders_url, notice: t("flash.delete", item: t("controller.order_item"))
	end


end
