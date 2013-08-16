# -*- encoding : utf-8 -*-
require 'spec_helper'

describe AddressesController do

  let(:user) { FactoryGirl.create(:user) }
  
  before { sign_in(user) }

end
