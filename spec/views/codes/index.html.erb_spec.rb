require 'spec_helper'

describe "codes/index" do
  before(:each) do
    codeset = Fabricate(:codeset)
    assign(:codes, [
      stub_model(Code,
        :codeset_id => codeset.id,
        :value => "Value"
      ),
      stub_model(Code,
        :codeset_id => codeset.id,
        :value => "Value"
      )
    ])
  end

  it "renders a list of codes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text =>  'compression algorithms', :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
