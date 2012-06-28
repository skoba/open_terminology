require 'spec_helper'

describe "codes/new" do
  before(:each) do
    assign(:code, stub_model(Code,
      :codeset_id => 1,
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => codes_path, :method => "post" do
      assert_select "input#code_codeset_id", :name => "code[codeset_id]"
      assert_select "input#code_value", :name => "code[value]"
    end
  end
end
