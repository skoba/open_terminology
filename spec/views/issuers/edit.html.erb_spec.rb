require 'spec_helper'

describe "issuers/edit" do
  before(:each) do
    @issuer = assign(:issuer, stub_model(Issuer,
      :name => "MyString"
    ))
  end

  it "renders the edit issuer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issuers_path(@issuer), :method => "post" do
      assert_select "input#issuer_name", :name => "issuer[name]"
    end
  end
end
