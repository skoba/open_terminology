require 'spec_helper'

describe "media_types/new" do
  before(:each) do
    assign(:media_type, stub_model(MediaType,
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new media_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => media_types_path, :method => "post" do
      assert_select "input#media_type_value", :name => "media_type[value]"
    end
  end
end
