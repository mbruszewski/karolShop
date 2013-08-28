# -*- encoding : utf-8 -*-
class Order < ActiveRecord::Base
  attr_accessible :status, :user_id, :address_id

	validates :status, presence: :true
	validates :user_id, presence: :true

	belongs_to :user
	belongs_to :address
	has_many :order_items, class_name: "OrderItem"

  def total
    total_price = 0.0
    order_items.each do |item|
      total_price += item.subtotal
    end
    return total_price
  end
end
