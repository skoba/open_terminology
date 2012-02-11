require 'spec_helper'

describe "issuers/new" do
  before(:each) do
    assign(:issuer, stub_model(Issuer,
      :vsab => "MyString",
      :source => "MyString"
    ).as_new_record)
  end

  it "renders new issuer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issuers_path, :method => "post" do
      assert_select "input#issuer_vsab", :name => "issuer[vsab]"
      assert_select "input#issuer_source", :name => "issuer[source]"
    end
  end
end
