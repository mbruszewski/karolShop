require 'spec_helper'

describe User do
	before do
    	@user = User.new(login: "example@wp.pl", password: "foobar", password_confirmation: "foobar")
  	end

	let(:user) { FactoryGirl.create(:user) }

	let!(:a1) { FactoryGirl.create(:address, user_id: user, city: "Bialystok", street_and_number: "Tab 13", post_code: "15-633") }

	subject { @user }

	it { should respond_to(:id) }
	it { should respond_to(:login) }
	it { should respond_to(:password) }
	it { should respond_to(:admin) }

	describe "login" do
		describe "should be email 1" do
			before { @user.login = "example" }
			it { should_not be_valid }
		end
	
		describe "should be email 2" do
			before { @user.login = "example@com" }
			it { should_not be_valid }
		end
	
		describe "should be email 3" do
			before { @user.login = "example.com.pl" }
			it { should_not be_valid }
		end
		
		describe "should be longer" do
			before { @user.login = "a@a.pl"}
			it { should_not be_valid }
		end

		describe "should be shorter" do
			before { @user.login = "a" * 50 + "@wp.pl" }
			it { should_not be_valid }
		end
	end

	describe "password" do
		describe "should be longer" do
			before { @user.password =  "abcdef" }
			it { should_not be_valid }
		end

		describe "should be shorter" do
			before { @user.password = "a" * 50 }
			it { should_not be_valid }
		end
		
		describe "cant be empty" do
			before { @user.password = "" }
			it { should_not be_valid }
		end
	end
end
