require File.dirname(__FILE__) + '/../spec_helper'

describe Regulamin do
  it "should be valid" do
    Regulamin.new.should be_valid
  end
end
