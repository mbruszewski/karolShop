# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Brand do

	before do
		@brand = Brand.new(name: "marka")
	end

	subject { @brand }

	it { should respond_to(:id) }
	it { should respond_to(:name) }

end
