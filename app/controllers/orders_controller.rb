# -*- encoding : utf-8 -*-
class OrdersController < ApplicationController
	before_filter :orders
	before_filter :logged_in_user

  def index
    @orders = @orders.all
  end

  def show
    @order = @orders.find(params[:id])
  end

  def new
    @order = @orders.new
  end

  def create
    @order = @orders.new(params[:order])
    if @order.save
      redirect_to @order
    else
      render :action => 'new'
    end
  end

  def edit
    @order = @orders.find(params[:id])
  end

  def update
    @order = @orders.find(params[:id])
    if @order.update_attributes(params[:order])
      redirect_to @order
    else
      render :action => 'edit'
    end
  end

  def destroy
    @order = @orders.find(params[:id])
    @order.destroy
    redirect_to orders_url, :notice => destroy_string("zamówienie.")
  end
end
