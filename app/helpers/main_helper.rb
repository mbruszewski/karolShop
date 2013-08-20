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

  def get_regulation_title
    reg = get_regulation()
    reg = reg ? reg.header_main : "Regulamin"
    return reg
  end

  def get_regulation_description
    reg = get_regulation()
    reg = reg ? reg.description_main : "zawartość jest pusta"
    return reg
  end

end
