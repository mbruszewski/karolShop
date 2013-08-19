# -*- encoding : utf-8 -*-
module MainHelper
  def get_name(index)
    @companies[index].name
  end

  def get_url(index)
    @companies[index].image_url
  end

  def get_regulation
    @regulamin = Regulamin.find_by_language(cookies[:language]);
    return @regulamin
  end

  def get_regulation_title
    @reg = get_regulation()
    return @reg.header_main
  end

  def get_regulation_description
    @reg = get_regulation()
    return @reg.description_main
  end
end
