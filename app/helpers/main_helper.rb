# -*- encoding : utf-8 -*-
module MainHelper
  def get_name(index)
    @companies[index].name
  end

  def get_url(index)
    @companies[index].image_url
  end

  def get_text
    txt = "Ala ma kota i jest bardzo z niego dumna bo costam costam i costam costam"

  end
end
