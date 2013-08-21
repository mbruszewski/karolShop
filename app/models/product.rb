# -*- encoding : utf-8 -*-
class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image_url
	
	belongs_to :category
	belongs_to :brand

	#has_many :companies_products, through: :companies
	#has_many :models_products, through: :models
	#has_many :products_versions, through: :versions

  has_many :companies_products, class_name: "CompaniesProducts"
  has_many :companies, through: :companies_products, source: "company"

  has_many :models_products, class_name: "ModelsProducts"
	has_many :models, through: :models_products, source: "model"

  has_many :products_versions, class_name: "ProductsVersions"
	has_many :versions, through: :products_versions, source: "version"

	validates :name, presence: :true
	validates :price, presence: :true

  ##############################################
  def add_model(model)
    models_products.create!(model_id: model.id)
  end

  def delete_model(model)
    models_products.find_by_model_id(model.id).destroy
  end
  ##############################################  
  def add_company(company)
    companies_products.create!(company_id: company.id)
  end

  def delete_company(company)
    companies_products.find_by_model_id(company.id).destroy
  end
  ##############################################
  def add_version(version)
    products_versions.create!(version_id: version.id)
  end

  def delete_version(version)
    products_versions.find_by_model_id(version.id).destroy
  end
  ##############################################



end
