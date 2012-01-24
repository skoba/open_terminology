require 'spec_helper'

describe Language do
  before(:each) do
    @language = Fabricate(:language)
  end

  it 'code is ja' do
    @language.code.should == 'ja'
  end
end
