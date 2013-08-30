require 'spec_helper'

describe ProductsCars do
  
  before { @products_cars = ProductsCars.new() }

  subject { @products_cars }

  it { should respond_to(:product_id) }
  it { should respond_to(:company_id) }
  it { should respond_to(:model_id) }
  it { should respond_to(:version_id) }
  it { should respond_to(:product) }
  it { should respond_to(:company) }
  it { should respond_to(:model) }
  it { should respond_to(:version) }




end
