require 'spec_helper'

describe "concepts/show" do
  before(:each) do
    @concept = assign(:concept, stub_model(Concept,
      :language_id => 41,
      :concept_id => "0",
      :rubric => "self"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Language/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Concept/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rubric/)
  end
end
