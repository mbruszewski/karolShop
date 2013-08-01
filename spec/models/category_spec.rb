require 'spec_helper'

describe Category do
  before {
		@category = Category.new(name: "nazwa kategorii")
	}

	it { should respond_to(:id) }
	it { should respond_to(:name) }

end
