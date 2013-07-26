class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :stock
	
	belongs_to :category

	validates :name, presence: :true
	validates :price, presence: :true
	validates :stock, presence: :true
end
