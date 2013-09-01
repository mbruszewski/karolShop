# -*- encoding : utf-8 -*-
class Version < ActiveRecord::Base
	attr_accessible :model_id, :name

  has_many :products_car
	has_many :products, through: :products_car, source: "product"
  belongs_to :model

end
