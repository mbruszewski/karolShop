# -*- encoding : utf-8 -*-
class LanguagesController < ApplicationController

  def english
    cookies[:language] = 'en'
    redirect_to root_path
  end

  def polish
    cookies[:language] = 'pl'
    redirect_to root_path
  end

end
