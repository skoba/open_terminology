require 'spec_helper'

describe "concepts/edit" do
  before(:each) do
    @concept = assign(:concept, stub_model(Concept,
      :language => "MyString",
      :concept_id => "MyString",
      :rubric => "MyString"
    ))
  end

  it "renders the edit concept form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => concepts_path(@concept), :method => "post" do
      assert_select "input#concept_language", :name => "concept[language]"
      assert_select "input#concept_concept_id", :name => "concept[concept_id]"
      assert_select "input#concept_rubric", :name => "concept[rubric]"
    end
  end
end
