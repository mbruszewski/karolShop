# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation
	has_secure_password

	before_save { |user| user.login = login.downcase }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :login, 
			presence: :true,
			format: { with: VALID_EMAIL_REGEX }, 
			uniqueness: { case_sensitive: false }, 
			length: { minimum: 7, maximum: 50} 
	validates :password, 
			presence: :true
	validates :password_confirmation, 
			presence: :true

	has_many :addresses
	has_many :orders
end
