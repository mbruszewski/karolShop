class Model < ActiveRecord::Base
  attr_accessible :company_id, :name

	has_and_belongs_to_many :products
	belongs_to :companies
	
end
