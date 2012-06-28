require 'spec_helper'

describe Codeset do
  describe 'codeset has a foreign key to issuers' do
    before(:each) do
      @codeset = Fabricate(:codeset)
    end

    it 'foreign key is assigned' do
      @codeset.issuer.name.should == 'openehr'
    end
  end
end
