class ProductsCarsController < ApplicationController

  def new
    @product = Product.find(params[:id])
    @product_car = ProductsCars.new
    @product_car.product = @product
  end

  def create
    render action: "new"
  end

end
