require 'spec_helper'

describe "languages/show" do
  before(:each) do
    @language = assign(:language, stub_model(Language,
      :code => "Code",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end

  it 'hide notice if notice is nil' do
    flash[:notice] = nil
    render
    rendered.should_not match /notice/i
  end

  it 'appear notice' do
    flash[:notice] = 'test'
    render
    rendered.should match /test/
  end
end
