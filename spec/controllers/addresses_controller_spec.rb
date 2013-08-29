# -*- encoding : utf-8 -*-
require 'spec_helper'

describe AddressesController do
  it { include 'pry' }

  let(:address) { FactoryGirl.create(:address,:normal_address) }
  let(:admin_address) { FactoryGirl.create(:address,:admin_address) }

  describe "not logged user" do
    describe "should not have access to" do

      it "new" do
        get :new
      end

      it "index" do
        get :index
      end

      after(:each) do
        response.should_not be_success
        response.should redirect_to root_path    
      end
    end
  end

  describe "logged as normal user" do
    before { sign_in address.user, no_capybara: true }

    describe "should have access to" do
      it "new" do
        get :new
      end

      it "index" do
        get :index
      end

      it "edit" do
        get :edit, id: address.id
      end

      after(:each) do
        response.should be_success
      end
    end

  end

  describe "logged as admin user" do
    before { sign_in admin_address.user, no_capybara: true }
    
    describe "should have access to" do
      it "new" do
        get :new
      end

      it "index" do
        get :index
      end

      it "edit" do
        get :edit, id: admin_address.id
      end
   
      after(:each) do
        response.should be_success
      end
    end 
  end
end
