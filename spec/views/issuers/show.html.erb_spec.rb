require 'spec_helper'

describe "issuers/show" do
  before(:each) do
    @issuer = assign(:issuer, stub_model(Issuer,
      :vsab => "Vsab",
      :source => "Source"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vsab/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Source/)
  end
end
