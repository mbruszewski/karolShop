# -*- encoding : utf-8 -*-
class Order < ActiveRecord::Base
  attr_accessible :status

	validates :status, presence: :true
	validates :user_id, presence: :true
	validates :address_id, presence: :true

	belongs_to :user
	belongs_to :address
	has_many :order_items	
end
