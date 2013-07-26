class Order < ActiveRecord::Base
  attr_accessible :status

	validates :status, presence: :true
	validates :user_id, presence: :true
	validates :address_id, presence: :true

	belongs_to :users
	belongs_to :address
	
end
