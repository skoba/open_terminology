require 'spec_helper'

describe "media_types/show" do
  before(:each) do
    @media_type = assign(:media_type, stub_model(MediaType,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
