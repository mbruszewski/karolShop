require 'spec_helper'

describe User do

	before do
    @user = User.new(login: "example@wp.pl", password: "foobar", password_confirmation: "foobar")
  end

	let(:user) { FactoryGirl.create(:user) }
=begin
	let!(:m1) { FactoryGirl.create(:micropost, user: user, content: "Foo") }
=end
	#attr_accessible :city, :street_and_number, :post_code
	let!(:a1) { FactoryGirl.create(:address, user_id: user, city: "Bialystok", street_and_number: "Tab 13", post_code: "15-633") }


	it { should respond_to(:login) }
	it { should respond_to(:password) }


end
