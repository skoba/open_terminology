require 'spec_helper'

describe "media_types/edit" do
  before(:each) do
    @media_type = assign(:media_type, stub_model(MediaType,
      :value => "MyString"
    ))
  end

  it "renders the edit media_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_types_path(@media_type), :method => "post" do
      assert_select "input#media_type_value", :name => "media_type[value]"
    end
  end
end
