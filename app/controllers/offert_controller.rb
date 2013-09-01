# -*- encoding : utf-8 -*-
class OffertController < ApplicationController
  def index
    if params[:id3]
      @products = Product.find_by_version(params[:id3])
    elsif params[:id2]
      @products = Product.find_by_model(params[:id2])
    elsif params[:id]
      @products = Product.find_by_company(params[:id])
    else
      @products = Product.all
    end

    @companies = Company.all
	end
end
