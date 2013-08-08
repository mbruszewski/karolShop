# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Model do

	before do
		@model = Model.new()
	end

	subject { @model }

	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:company_id) }


end
