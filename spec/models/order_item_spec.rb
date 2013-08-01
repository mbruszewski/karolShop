require 'spec_helper'

describe OrderItem do
	
	before do
		@item = OrderItem.new(name: "produkt", price: 15.55, count: 15)
	end
		
	subject { @item }

	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:price) }
	it { should respond_to(:count) }
	it { should respond_to(:order_id) }
	it { should respond_to(:product_id) }

end
