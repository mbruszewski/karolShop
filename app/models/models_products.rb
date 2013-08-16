# -*- encoding : utf-8 -*-
class ModelsProducts < ActiveRecord::Base
  attr_accessible :product_id, :model_id

  belongs_to :product
  belongs_to :model

  validates :product_id, presence: true
  validates :model_id, presence: true
end
