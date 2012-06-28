require 'spec_helper'

describe "codes/show" do
  before(:each) do
    @code = assign(:code, stub_model(Code,
      :codeset_id => 1,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Value/)
  end
end
