require 'spec_helper'

describe "media_types/index" do
  before(:each) do
    assign(:media_types, [
      stub_model(MediaType,
        :value => "Value"
      ),
      stub_model(MediaType,
        :value => "Value"
      )
    ])
  end

  it "renders a list of media_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
