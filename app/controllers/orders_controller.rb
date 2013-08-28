# -*- encoding : utf-8 -*-
class OrdersController < ApplicationController
	before_filter :logged_in_user

  def index
    @orders = current_user.orders.all
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def new
    if params[:product_id] != nil
      session[:product_id] = params[:product_id]
    end

    if current_user.addresses.count == 0
      redirect_to new_address_path, notice: t("need_new_address")
    elsif session[:order_id]
      create_item()
    end
    @order = current_user.orders.new
  end

  def create
    @order = current_user.orders.new(params[:order])
    @order.user = current_user
    if @order.save
      session[:order_id] = @order.id
      create_item()
    else
      render :action => 'new'
    end
  end

  def edit
    @order = current_user.orders.find(params[:id])
  end

  def update
    @order = current_user.orders.find(params[:id])
    if @order.update_attributes(params[:order])
      redirect_to @order
    else
      render :action => 'edit'
    end
  end

  def destroy
    @order = current_user.orders.find(params[:id])
    session[:order_id] = nil
    @order.destroy
    redirect_to orders_url, :notice => "abc"
  end
 
  def submit_order
    @order = current_user.orders.find(params[:id])
    if @order.update_attribute(:status, "zatwierdzone")
      redirect_to @order
    else
      redirect_to root_path
    end
  end

  def increase_count
    @order = current_user.orders.find(params[:order_id])
    @orderItem = @order.order_items.find(params[:order_item_id])
    if @orderItem.update_attribute(:count, @orderItem.count + 1)
      redirect_to @order
    else
      redirect_to root_path
    end
  end

  def decrease_count
    @order = current_user.orders.find(params[:order_id])
    @orderItem = @order.order_items.find(params[:order_item_id])
    if @orderItem.count == 1
      @orderItem.destroy
      redirect_to @order
    elsif @orderItem.update_attribute(:count, @orderItem.count - 1)
      redirect_to @order
    else
      redirect_to root_path
    end
  end

  def remove_order_item
    @order = current_user.orders.find(params[:order_id])
    @orderItem = @order.order_items.find(params[:order_item_id])
    @orderItem.destroy
    redirect_to @order
  end

  private

    def create_item
      product_id = session[:product_id]
      product = Product.find(product_id)

      @order = Order.find(session[:order_id])

      if @order.order_items.find_by_product_id(product.id)
        @orderItem = @order.order_items.find_by_product_id(product.id)
        @orderItem.count = @orderItem.count + 1
      else
        @orderItem = @order.order_items.new()
        @orderItem.product_id = product.id
        @orderItem.count = 1
        @orderItem.name = product.name
        @orderItem.price = product.price
      end

	  	if @orderItem.save
			  redirect_to current_user.orders.last, notice: t("flash.new", item: t("controller.add_order_item"))
		  else
			  redirect_to root_path
		  end
    end


end
