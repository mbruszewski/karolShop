# -*- encoding : utf-8 -*-
module ProductsHelper

  def print_price(price)
    price = number_with_precision(price, precision: 2)
    price = number_to_currency(price, unit: "", precision: 2)
    price = price.to_s + " zł"
    return price
  end

  def get_category_name(product)
    if product.category
      return product.category.name
    else
      return " "
    end
  end

  def get_brand_name(product)
    if product.brand
      return product.brand.name
    else
      return " "
    end
  end

  def get_all_cars(product)
    str = ""
  end
end
