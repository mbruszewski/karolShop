# -*- encoding : utf-8 -*-
class OrderItem < ActiveRecord::Base
  attr_accessible :count, :name, :price, :order_id, :product_id

	validates :count, presence: :true
	validates :name, presence: :true
	validates :price, presence: :true

	belongs_to :order
	belongs_to :product

  def subtotal
    return count.to_f * price.to_f
  end

end

