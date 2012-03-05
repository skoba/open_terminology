require 'spec_helper'

describe "concepts/new" do
  before(:each) do
    assign(:concept, stub_model(Concept,
      :language_id => 41,
      :concept_id => "0",
      :rubric => "self"
    ).as_new_record)
  end

  it "renders new concept form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => concepts_path, :method => "post" do
      assert_select "input#concept_language", :name => "concept[language]"
      assert_select "input#concept_concept_id", :name => "concept[concept_id]"
      assert_select "input#concept_rubric", :name => "concept[rubric]"
    end
  end
end
