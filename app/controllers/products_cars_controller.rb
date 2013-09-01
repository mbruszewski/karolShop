class ProductsCarsController < OnlyAdminController

  def new
    @product = Product.find(params[:id])
    @products_cars = ProductsCar.new
    @products_cars.product = @product
  end

  def create
    @products_cars = ProductsCar.new(params[:products_car])
    if @products_cars.save
      redirect_to root_path, notice: "pomyslnie dodano"
    else
      redirect_to new_products_car_path(id: @products_cars.product_id), notice: "Produkt byl juz dodany do tej kategorii"
    end
  end

end
