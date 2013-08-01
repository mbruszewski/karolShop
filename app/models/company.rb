class Company < ActiveRecord::Base
  attr_accessible :image_url, :name

	has_and_belongs_to_many :products	

	
end
