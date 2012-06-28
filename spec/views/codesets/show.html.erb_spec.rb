require 'spec_helper'

describe "codesets/show" do
  before(:each) do
    @codeset = assign(:codeset, stub_model(Codeset,
      :issuer_id => 1,
      :openehr_id => "Openehr",
      :external_id => "External"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Openehr/)
    rendered.should match(/External/)
  end
end
