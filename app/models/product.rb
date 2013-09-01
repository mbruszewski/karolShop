# -*- encoding : utf-8 -*-
class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image_url, :category_id, :brand_id
	
	belongs_to :category
	belongs_to :brand

  has_many :products_car, class_name: "ProductsCar"
  has_many :companies, through: :products_car, source: "company"
  has_many :models, through: :products_car, source: "model"
  has_many :versions, through: :products_car, source: "version"

=begin
  has_many :companies_products, class_name: "CompaniesProducts"
  has_many :companies, through: :companies_products, source: "company"

  has_many :models_products, class_name: "ModelsProducts"
	has_many :models, through: :models_products, source: "model"

  has_many :products_versions, class_name: "ProductsVersions"
	has_many :versions, through: :products_versions, source: "version"
=end

  VALID_PRICE_REGEX = /^\d+??(?:\.\d{0,2})?$/
	
  validates :name, presence: :true
	validates :price, presence: :true, numericality: { greater_than: 0 }, format: { with: VALID_PRICE_REGEX }

  def self.find_by_company(id)
    Company.find(id).products.group("products.name")
  end

  def self.find_by_model(id)
    Model.find(id).products
  end

  def self.find_by_version(id)
    Version.find(id).products
  end

end
