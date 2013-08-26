# -*- encoding : utf-8 -*-
class OrderItemsController < ApplicationController
  before_filter :load_order


	def create
		@orderItem = @order.order_items.new()
    param = params[:product]
    @orderItem.product_id = param.id
    @orderItem.count = 1
    @orderItem.name = param.name
    @orderItem.price = param.price

		if @orderItem.save
			redirect_to current_user.orders.last, notice: t("flash.new", item: t("controller.add_order_item"))
		else
			redirect_to root_path
		end
	end

  def update
		@orderItem = @order.order_items.find(params[:id])
		if @orderItem.update_attributes(params[:orderItem])
			redirect_to root_path, notice: t("flash.edit", item: t("controller.order_item"))
		else
			redirect_to root_path
		end
	end

	def destroy
		@orderItem = @order.order_items.find(params[:id])
    session[:order_id] = nil if @orderItem.id == session[:order_id]
		@orderItem.destroy
		redirect_to orders_url, notice: t("flash.delete", item: t("controller.order_item"))
	end
end
