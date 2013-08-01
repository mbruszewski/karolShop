class Version < ActiveRecord::Base
  attr_accessible :model_id, :namegeid

	has_and_belongs_to_many :products


end
