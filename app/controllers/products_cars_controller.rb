class ProductsCarsController < OnlyAdminController

  def new
    @product = Product.find(params[:id])
    @products_cars = ProductsCar.new
    @products_cars.product = @product
  end

  def create
    @products_cars = ProductsCar.new(params[:products_car])
    if @products_cars.save
      debugger
      redirect_to root_path, notice: "pomyslnie dodano"
    else
      debugger
      render action: 'new'
    end
  end

end
