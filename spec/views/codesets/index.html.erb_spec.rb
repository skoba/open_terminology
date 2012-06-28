require 'spec_helper'

describe "codesets/index" do
  before(:each) do
    issuer = Fabricate(:issuer)
    assign(:codesets, [
      stub_model(Codeset,
        :issuer_id => issuer.id,
        :openehr_id => "Openehr",
        :external_id => "External"
      ),
      stub_model(Codeset,
        :issuer_id => issuer.id,
        :openehr_id => "Openehr",
        :external_id => "External"
      )
    ])
  end

  it "renders a list of codesets" do
    render

    assert_select "tr>td", :text => 'openehr', :count => 2
    assert_select "tr>td", :text => "Openehr".to_s, :count => 2
    assert_select "tr>td", :text => "External".to_s, :count => 2
  end
end
