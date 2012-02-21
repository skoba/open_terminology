require 'spec_helper'

describe Language do
  before(:each) do
    @language = Fabricate(:language)
  end

  it 'code is ja' do
    @language.code.should == 'ja'
  end

  it 'code is mandatory' do
    @language.code = nil
    @language.should_not be_valid
  end

  it 'description is mandatory' do
    @language.description = nil
    @language.should_not be_valid
  end
end
