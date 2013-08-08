# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Address do

	let(:user) { FactoryGirl.create(:user) }
		
	
 	before {
		@address = user.addresses.new(city: "bialystok", street_and_number: "jakastam 5", post_code: "15-756")
  	}

	it { should respond_to(:id) }
	it { should respond_to(:city) }
	it { should respond_to(:street_and_number) }
	it { should respond_to(:post_code) }
	it { should respond_to(:user_id) }

end
