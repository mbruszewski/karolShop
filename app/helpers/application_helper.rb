# -*- encoding : utf-8 -*-

module ApplicationHelper 
  def upcase(item)
    if item
      return item.mb_chars.upcase
    else
      return ""
    end
  end 
end
