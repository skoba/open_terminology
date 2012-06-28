require 'spec_helper'

describe Code do
  before(:each) do
    @code = Fabricate(:code)
  end

  it 'has relationship with codeset' do
    @code.codeset.issuer.name = 'openehr'
  end
end
