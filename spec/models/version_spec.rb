# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Version do
	
	before do
		@version = Version.new()
	end

	subject { @version }

	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:model_id) }
	

end
