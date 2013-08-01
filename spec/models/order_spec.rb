require 'spec_helper'

describe Order do
	before {
		@order = Order.new()
	}

	subject { @order }

	it { should respond_to(:id) }
	it { should respond_to(:status) }
	it { should respond_to(:user_id) }
	it { should respond_to(:address_id) }

	describe "should have default status" do
		it { @order.status.should == "nowy" }
	end
	
end
