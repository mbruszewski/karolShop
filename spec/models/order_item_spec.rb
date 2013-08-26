# -*- encoding : utf-8 -*-
require 'spec_helper'

describe OrderItem do

	let(:order)		{ FactoryGirl.create(:order, :normal_order) }
	let(:product)	{ FactoryGirl.create(:product) }	
 
  

  before {
    @item = order.order_items.new(name: "produkt", price: 15.55)

    @item.product = product
  }

	subject { @item }

  it { pp @item }

	it { should respond_to(:id) }
	it { should respond_to(:name) }
	it { should respond_to(:price) }
	it { should respond_to(:count) }
	it { should respond_to(:order_id) }
  it { should respond_to(:order) }
	it { should respond_to(:product_id) }
  it { should respond_to(:product) }
  
	its(:order) 		{ should == order }
	its(:order) 		{ should_not == nil }
	its(:product) 	{ should == product }
	its(:product)	{ should_not == nil }


end
