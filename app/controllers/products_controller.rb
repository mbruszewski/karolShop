# -*- encoding : utf-8 -*-
class ProductsController < ApplicationController
  before_filter :admin_user, only: [:index, :new, :create, :edit, :update, :destroy]

  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product, :notice => t("flash.new", item: t("controller.product"))
    else
      render :action => 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice  => t("flash.edit", item: t("controller.product"))
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, :notice => t("flash.delete", item: t("controller.product"))
  end
end
