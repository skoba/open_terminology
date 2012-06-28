require 'spec_helper'

describe "issuers/index" do
  before(:each) do
    assign(:issuers, [
      stub_model(Issuer,
        :name => "Name"
      ),
      stub_model(Issuer,
        :name => "Name"
      )
    ])
  end

  it "renders a list of issuers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
