require 'spec_helper'

describe "identifiers/show" do
  before(:each) do
    @identifier = assign(:identifier, stub_model(Identifier,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
