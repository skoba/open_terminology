require 'spec_helper'

describe "issuers/index" do
  before(:each) do
    assign(:issuers, [
      stub_model(Issuer,
        :vsab => "Vsab",
        :source => "Source"
      ),
      stub_model(Issuer,
        :vsab => "Vsab",
        :source => "Source"
      )
    ])
  end

  it "renders a list of issuers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vsab".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Source".to_s, :count => 2
  end
end
