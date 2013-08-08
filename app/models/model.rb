# -*- encoding : utf-8 -*-
class Model < ActiveRecord::Base
  attr_accessible :company_id, :name


  
	has_many :models_products
  has_many :products, through: :models_products, source: "product"

	belongs_to :company

	has_many :versions, dependent: :destroy
	
end
