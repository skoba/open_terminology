require 'spec_helper'

describe "countries/edit" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :code => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => countries_path(@country), :method => "post" do
      assert_select "input#country_code", :name => "country[code]"
      assert_select "input#country_description", :name => "country[description]"
    end
  end
end
