require 'spec_helper'

describe "identifiers/new" do
  before(:each) do
    assign(:identifier, stub_model(Identifier,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new identifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => identifiers_path, :method => "post" do
      assert_select "input#identifier_name", :name => "identifier[name]"
    end
  end
end
