# -*- encoding : utf-8 -*-
class OrderItem < ActiveRecord::Base
  attr_accessible :count, :name, :price

	validates :count, presence: :true
	validates :name, presence: :true
	validates :price, presence: :true

	belongs_to :order
	belongs_to :product



end

