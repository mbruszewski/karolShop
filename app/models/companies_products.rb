# -*- encoding : utf-8 -*-
class CompaniesProducts < ActiveRecord::Base
  attr_accessible :company_id, :product_id

  belongs_to :company
  belongs_to :product

  validates :company_id, presence: true
  validates :product_id, presence: true
end

