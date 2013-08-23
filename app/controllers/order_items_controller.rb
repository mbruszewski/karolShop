# -*- encoding : utf-8 -*-
class OrderItemsController < ApplicationController
  before_filter :load_order, only: [:create]

	def create
		@orderItem = @order.orderItems.new(params[:orderitems])
		if @orderItem.save
			redirect_to root_path, notice: t("flash.new", item: t("controller.add_order_item"))
		else
			render action: 'new'
		end
	end

  def update
		@orderItem = @order.orderItems.find(params[:id])
		if @orderItem.update_attributes(params[:orderItem])
			redirect_to root_path, notice: t("flash.edit", item: t("controller.order_item"))
		else
			render action: 'edit'
		end
	end

	def destroy
		@orderItem = @order.orderItems.find(params[:id])
		@orderItem.destroy
		redirect_to orders_url, notice: t("flash.delete", item: t("controller.order_item"))
	end
end
