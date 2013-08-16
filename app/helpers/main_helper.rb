# -*- encoding : utf-8 -*-
module MainHelper
  def get_name(index)
    @companies[index].name
  end

  def get_url(index)
    @companies[index].image_url
  end
end
