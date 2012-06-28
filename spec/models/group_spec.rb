require 'spec_helper'

describe Group do
  before(:each) do
    @group = Fabricate(:group)
  end

  it 'name is attestation reason' do
    @group.name.should == 'attestation reason'
  end
end
