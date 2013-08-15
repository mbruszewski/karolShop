class OffertController < ApplicationController
  def index
    @products = Product.all
	end
end
