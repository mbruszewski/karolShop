# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Order do

	let(:user) { FactoryGirl.create(:user) }
	let(:address) { FactoryGirl.create(:address) }


	before {
		@order = user.orders.new()
		@order.address = address
	}

	subject { @order }

	it { should respond_to(:id) }
	it { should respond_to(:status) }
	it { should respond_to(:user_id) }
	it { should respond_to(:address_id) }
	its(:user_id) 		{ should == user.id }
	its(:user_id) 		{ should_not == nil }
	its(:address_id) 	{ should == address.id }
	its(:address_id) 	{ should_not == nil }


	describe "should have default status" do
		it { @order.status.should == "nowy" }
	end
	
end
