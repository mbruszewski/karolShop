# -*- encoding : utf-8 -*-
class Company < ActiveRecord::Base
  attr_accessible :image_url, :name

  has_many :companies_products
  has_many :products, through: :companies_products, source: "product"
  
  has_many :models, dependent: :destroy
	
end
