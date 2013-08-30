class ProductsCars < ActiveRecord::Base
  attr_accessible :company_id, :model_id, :product_id, :version_id

  belongs_to :product
  belongs_to :company
  belongs_to :model
  belongs_to :version

  validates :product, presence: :true
  validates :company, presence: :true
  validates :model, presence: :true
  validates :version, presence: :true


end
