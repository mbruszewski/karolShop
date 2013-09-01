# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Product do
  

  let(:brand)     { FactoryGirl.create(:brand) }
  let(:category)  { FactoryGirl.create(:category) }

  let(:company)   { FactoryGirl.create(:company) }
  let(:company2)  { FactoryGirl.create(:company) }

  let(:model)     { FactoryGirl.create(:model) }
  let(:model2)    { FactoryGirl.create(:model) }


  let(:version)   { FactoryGirl.create(:version) }
  let(:version2)  { FactoryGirl.create(:version) }

  
	before {
		@product = Product.create(name: "produkt", description: "jakas tam wiadomosc", price: 12.00)    
    @product.category = category
    @product.brand = brand
  }

	subject { @product }
		
	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:description) }
	it { should respond_to(:price) }
	it { should respond_to(:category_id) }
  it { should respond_to(:category) }
	it { should respond_to(:brand_id) }
  it { should respond_to(:brand) }

  it { should respond_to(:products_car) }
  it { should respond_to(:companies) }
  it { should respond_to(:models) }
  it { should respond_to(:versions) }
  
  #it { include 'pry'  
  #binding.pry }

  its(:brand) { should_not == nil }
  
  its(:category) { should_not == nil }

end
