# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Company do

	before do
		@company = Company.new()
	end

	subject { @company }

	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:image_url) }


end
