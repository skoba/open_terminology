require 'spec_helper'

describe "codesets/new" do
  before(:each) do
    assign(:codeset, stub_model(Codeset,
      :issuer_id => 1,
      :openehr_id => "MyString",
      :external_id => "MyString"
    ).as_new_record)
  end

  it "renders new codeset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => codesets_path, :method => "post" do
      assert_select "input#codeset_issuer_id", :name => "codeset[issuer_id]"
      assert_select "input#codeset_openehr_id", :name => "codeset[openehr_id]"
      assert_select "input#codeset_external_id", :name => "codeset[external_id]"
    end
  end
end
