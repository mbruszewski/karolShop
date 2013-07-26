require 'spec_helper'

describe User do

	before do
    @user = User.new(login: "example@wp.pl", password: "foobar", password_confirmation: "foobar")
  end

	let(:user) { FactoryGirl.create(:user) }

	let!(:a1) { FactoryGirl.create(:address, user_id: user, city: "Bialystok", street_and_number: "Tab 13", post_code: "15-633") }

	subject { @user }

	it { should respond_to(:login) }
	it { should respond_to(:password) }



end
