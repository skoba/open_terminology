require 'spec_helper'

describe "identifiers/edit" do
  before(:each) do
    @identifier = assign(:identifier, stub_model(Identifier,
      :name => "MyString"
    ))
  end

  it "renders the edit identifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => identifiers_path(@identifier), :method => "post" do
      assert_select "input#identifier_name", :name => "identifier[name]"
    end
  end
end
