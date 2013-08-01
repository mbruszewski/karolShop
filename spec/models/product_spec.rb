require 'spec_helper'

describe Product do
  
	before {
		@product = Product.new(name: "produkt", description: "jakas tam wiadomosc", price: 12.00, stock: 30)
	}

	subject { @product }
		
	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:description) }
	it { should respond_to(:price) }
	it { should respond_to(:stock) }
	it { should respond_to(:category_id) }
	it { should respond_to(:brand_id) }

end
