# -*- encoding : utf-8 -*-
class Model < ActiveRecord::Base
  attr_accessible :company_id, :name

	has_many :products_cars
  has_many :products, through: :products_cars, source: "product"

	belongs_to :company

	has_many :versions, dependent: :destroy
	
end
