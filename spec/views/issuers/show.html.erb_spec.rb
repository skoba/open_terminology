require 'spec_helper'

describe "issuers/show" do
  before(:each) do
    @issuer = assign(:issuer, stub_model(Issuer,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
