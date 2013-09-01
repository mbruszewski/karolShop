# -*- encoding : utf-8 -*-
module OffertHelper

  def company_name(company)
    return company.name.upcase
  end

  def get_redirect_path(*params)
    string = offert_index_path

    if params.length >= 1
      string += "?id=" + params[0].to_s
    end

    if params.length >= 2
      string += "&id2=" + params[1].to_s
    end

    if params.length >= 3
      string += "&id3=" + params[2].to_s
    end

    return string
  end

end
