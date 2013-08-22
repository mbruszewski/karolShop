# -*- encoding : utf-8 -*-
module OffertHelper

  def print_price(price)
    price = number_with_precision(price, precision: 2)
    price = number_to_currency(price, unit: "", precision: 2)
    price = price.to_s + " zł"
    return price
  end

  def company_name(company)
    return company.name.upcase
  end


  def image_url(product)
    if product.image_url
      url = product.image_url
    elsif cookies[:language] == 'en'
      url = "no_image_en.jpg"
    else
      url = "no_image_pl.jpg"
    end
    return url
  end 

end
