require 'spec_helper'

describe "countries/show" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :code => "Code",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Description/)
  end
end
