# -*- encoding : utf-8 -*-
class OffertController < ApplicationController
  def index
    @products = Product.all
    @companies = Company.all
	end
end
