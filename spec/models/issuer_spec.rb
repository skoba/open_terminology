require 'spec_helper'

describe Issuer do
  describe 'fabiricator assigns properly' do
    before(:each) do
      @issuer = Fabricate(:issuer)
    end

    it 'name is openehr' do
      @issuer.name.should == 'openehr'
    end
  end
end
