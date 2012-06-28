require 'spec_helper'

describe Concept do
  before(:each) do
    @concept = Fabricate(:concept)
  end

  it 'rubric is signed' do
    @concept.rubric.should == 'signed'
  end

  it 'has relationship with group' do
    @concept.group.name.should == 'attestation reason'
  end
end
