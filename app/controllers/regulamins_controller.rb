# -*- encoding : utf-8 -*-
class RegulaminsController < ApplicationController
  before_filter :admin_user, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
    @regulamins = Regulamin.all
  end

  def reg_page
    @regulamin = Regulamin.find_by_language(cookies[:language])
    reg = Regulamin.new
    reg.header = "Regulamin"
    reg.description = "Trzeba ustawić regulamin"

    @regulamin = @regulamin ? @regulamin : reg
  end

  def new
    @regulamin = Regulamin.new
  end

  def create
    @regulamin = Regulamin.new(params[:regulamin])
    if @regulamin.save
      redirect_to regulamins_path, :notice => "Successfully created regulamin."
    else
      render :action => 'new'
    end
  end

  def edit
    @regulamin = Regulamin.find(params[:id])
  end

  def update
    @regulamin = Regulamin.find(params[:id])
    if @regulamin.update_attributes(params[:regulamin])
      redirect_to regulamins_path, :notice  => "Successfully updated regulamin."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @regulamin = Regulamin.find(params[:id])
    @regulamin.destroy
    redirect_to regulamins_url, :notice => "Successfully destroyed regulamin."
  end
end
