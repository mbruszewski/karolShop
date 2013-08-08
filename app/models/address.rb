# -*- encoding : utf-8 -*-
class Address < ActiveRecord::Base
  attr_accessible :city, :street_and_number, :post_code

	VALID_ZIP_CODE_REGEX = /\A[0-9]{2}\-[0-9]{3}\z/

	validates :city, presence: :true
	validates :street_and_number, presence: :true
	validates :post_code, presence: :true, format: { with: VALID_ZIP_CODE_REGEX }

	belongs_to :user
	has_many :orders
end
