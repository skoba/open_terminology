require 'spec_helper'

describe "identifiers/index" do
  before(:each) do
    assign(:identifiers, [
      stub_model(Identifier,
        :name => "Name"
      ),
      stub_model(Identifier,
        :name => "Name"
      )
    ])
  end

  it "renders a list of identifiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
