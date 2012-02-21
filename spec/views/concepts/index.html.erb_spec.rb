require 'spec_helper'

describe "concepts/index" do
  before(:each) do
    assign(:concepts, [
      stub_model(Concept,
        :language => "Language",
        :concept_id => "Concept",
        :rubric => "Rubric"
      ),
      stub_model(Concept,
        :language => "Language",
        :concept_id => "Concept",
        :rubric => "Rubric"
      )
    ])
  end

  it "renders a list of concepts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Concept".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rubric".to_s, :count => 2
  end
end
