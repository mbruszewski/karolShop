class Regulamin < ActiveRecord::Base
  attr_accessible :language, :header_main, :description_main, :header, :description
end
