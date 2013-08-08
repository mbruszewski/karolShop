# -*- encoding : utf-8 -*-
class Brand < ActiveRecord::Base
  attr_accessible :name

  has_many :products
end
