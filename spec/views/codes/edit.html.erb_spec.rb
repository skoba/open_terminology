require 'spec_helper'

describe "codes/edit" do
  before(:each) do
    @code = assign(:code, stub_model(Code,
      :codeset_id => 1,
      :value => "MyString"
    ))
  end

  it "renders the edit code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => codes_path(@code), :method => "post" do
      assert_select "input#code_codeset_id", :name => "code[codeset_id]"
      assert_select "input#code_value", :name => "code[value]"
    end
  end
end
