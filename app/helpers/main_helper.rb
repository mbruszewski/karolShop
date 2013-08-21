# -*- encoding : utf-8 -*-
module MainHelper
  def get_name(index)
    @companies[index].name
  end

  def get_url(index)
    @companies[index].image_url
  end

  def get_redirect_path
    offert_index_path 
  end

  def get_regulation
    regulamin = Regulamin.find_by_language(cookies[:language]);
    return regulamin
  end

  def get_regulation_main_title
    reg = get_regulation()
    value = reg ? reg.header_main : "Regulamin"
    return value
  end

  def get_regulation_main_description
    reg = get_regulation()
    value = reg ? reg.description_main : "zawartość jest pusta"
    return value
  end

end
