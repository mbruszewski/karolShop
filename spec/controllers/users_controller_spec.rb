require 'spec_helper'

describe UsersController do

  let(:user) { FactoryGirl.create(:user) }
  let(:admin) { FactoryGirl.create(:admin) }


  describe "not logged user" do
    describe "should have access to" do
      it "new" do
        get :new
      end

      after(:each) do
        response.should be_success
      end
    end

    describe "should not have access to" do
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
    before { sign_in user }
   
    describe "should have access to" do
      it "show" do
        get :show, id: user.id
      end    

      it "edit" do
        get :edit, id: user.id
      end
   
      after(:each) do
        response.should be_success
      end
    end

    describe "should not have access to " do
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

  describe "logged as admin user" do
    before { sign_in admin }
    
    describe "should have access to" do
      it "show" do
        get :show, id: admin.id
      end

      it "index" do
        get :index
      end
    
      it "edit" do
        get :edit, id: admin.id
      end

      after(:each) do
        response.should be_success
      end
    end

    describe "should not have access to" do
      it "new" do
        get :new
      end

      after(:each) do
        response.should_not be_success
        response.should redirect_to root_path
      end
    end
  end
end
