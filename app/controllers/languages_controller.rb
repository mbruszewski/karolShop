# -*- encoding : utf-8 -*-
class LanguagesController < ApplicationController

  def english
    cookies[:language] = 'en'
    redirect_to :back
  end

  def polish
    cookies[:language] = 'pl'
    redirect_to :back
  end

end
