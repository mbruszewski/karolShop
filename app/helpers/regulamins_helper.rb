# -*- encoding : utf-8 -*-
module RegulaminsHelper

  def get_regulation
    regulamin = Regulamin.find_by_language(cookies[:language]);
    return regulamin
  end

  def get_regulation_title
    reg = get_regulation()
    reg = reg ? reg.header : "Regulamin"
    return reg
  end

  def get_regulation_description
    reg = get_regulation()
    reg = reg ? reg.description : "zawartość jest pusta"
    return reg
  end


end
