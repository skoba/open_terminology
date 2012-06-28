require 'spec_helper'

describe "issuers/new" do
  before(:each) do
    assign(:issuer, stub_model(Issuer,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new issuer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issuers_path, :method => "post" do
      assert_select "input#issuer_name", :name => "issuer[name]"
    end
  end
end
