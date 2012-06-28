require 'spec_helper'

describe "concepts/show" do
  before(:each) do
    @concept = assign(:concept, stub_model(Concept,
      :code => "Code",
      :group_id => "Group",
      :integer => "Integer",
      :rubric => "Rubric"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Group/)
    rendered.should match(/Integer/)
    rendered.should match(/Rubric/)
  end
end
