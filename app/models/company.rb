# -*- encoding : utf-8 -*-
class Company < ActiveRecord::Base
  attr_accessible :image_url, :name

  has_many :products_car
  has_many :products, through: :products_car, source: "product"
  
  has_many :models, dependent: :destroy
	
end
