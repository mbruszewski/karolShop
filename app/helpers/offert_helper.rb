# -*- encoding : utf-8 -*-
module OffertHelper

  def company_name(company)
    return company.name.upcase
  end

  def get_redirect_path(id)
    offert_index_path + "?id=" + id.to_s
  end

  def get_redirect_path2(id,id2)
    offert_index_path + "?id=" + id.to_s + "&id2=" + id2.to_s;
  end

end
