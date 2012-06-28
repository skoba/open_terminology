require 'spec_helper'

describe "codesets/index" do
  before(:each) do
    assign(:codesets, [
      stub_model(Codeset,
        :issuer_id => 1,
        :openehr_id => "Openehr",
        :external_id => "External"
      ),
      stub_model(Codeset,
        :issuer_id => 1,
        :openehr_id => "Openehr",
        :external_id => "External"
      )
    ])
  end

  it "renders a list of codesets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Openehr".to_s, :count => 2
    assert_select "tr>td", :text => "External".to_s, :count => 2
  end
end
