# -*- encoding : utf-8 -*-
class AddressesController < ApplicationController

	before_filter :logged_in_user

  def index
  	@addresses = current_user.addresses.all	
  end

  def new
    @address = current_user.addresses.new
  end

  def create
    @address = current_user.addresses.new(params[:address])
    if @address.save
      redirect_to addresses_url, :notice => t("flash.new", item: t("controller.address"))
    else
      render :action => 'new'
    end
  end

  def edit
    @address = current_user.addresses.find(params[:id])
  end

  def update
    @address = current_user.addresses.find(params[:id])
    if @address.update_attributes(params[:address])
      redirect_to addresses_url, :notice  => t("flash.edit", item: t("controller.address"))
    else
      render :action => 'edit'
    end
  end

  def destroy
    @address = current_user.addresses.find(params[:id])
    @address.destroy
    redirect_to addresses_url, :notice => t("flash.delete", item: t("controller.address"))
  end
end
