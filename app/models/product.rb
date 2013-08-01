class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :stock
	
	belongs_to :category
	belongs_to :brand
	has_and_belongs_to_many :companies
	has_and_belongs_to_many :models
	has_and_belongs_to_many :versions

	validates :name, presence: :true
	validates :price, presence: :true
	validates :stock, presence: :true
end
