# -*- encoding : utf-8 -*-

module ApplicationHelper 
  def upcase(item)
    if item
      return item.mb_chars.upcase
    else
      return ""
    end
  end 

  def image_url(product)
    if product.image_url && product.image_url != ""
      url = product.image_url
    elsif cookies[:language] == 'en'
      url = "no_image_en.jpg"
    else
      url = "no_image_pl.jpg"
    end
    return url
  end 
end
