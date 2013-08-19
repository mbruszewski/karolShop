# -*- encoding : utf-8 -*-
module OffertHelper

  def print_price(price)
    price = number_to_currency(price, unit: "")
    price = price.to_s + "zł"
    return price
  end

  def print_stock(stock)
    return stock.to_s
  end

  def company_name(company)
    return company.name.upcase
  end 

end
