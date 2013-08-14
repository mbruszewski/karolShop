# -*- encoding : utf-8 -*-
class MainController < ApplicationController
	def index
    @products = Product.all
	end
end
