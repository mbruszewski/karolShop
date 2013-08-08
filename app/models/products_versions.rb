class ProductsVersions < ActiveRecord::Base
  attr_accessible :product_id, :version_id

  belongs_to :product
  belongs_to :version

  validates :product_id, presence: true
  validates :version_id, presence: true

end
