class OrdersController < ApplicationController
	before_filter :orders
	before_filter :logged_in_user

  def index
    @orders = @ord.all
  end

  def show
    @order = @ord.find(params[:id])
  end

  def new
    @order = @ord.new
  end

  def create
    @order = @ord.new(params[:order])
    if @order.save
      redirect_to @order, :notice => "Successfully created order."
    else
      render :action => 'new'
    end
  end

  def edit
    @order = @ord.find(params[:id])
  end

  def update
    @order = @ord.find(params[:id])
    if @order.update_attributes(params[:order])
      redirect_to @order, :notice  => "Successfully updated order."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @order = @ord.find(params[:id])
    @order.destroy
    redirect_to orders_url, :notice => "Successfully destroyed order."
  end
end
