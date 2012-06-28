require 'spec_helper'

describe "concepts/edit" do
  before(:each) do
    @concept = assign(:concept, stub_model(Concept,
      :code => "MyString",
      :group_id => "MyString",
      :integer => "MyString",
      :rubric => "MyString"
    ))
  end

  it "renders the edit concept form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => concepts_path(@concept), :method => "post" do
      assert_select "input#concept_code", :name => "concept[code]"
      assert_select "input#concept_group_id", :name => "concept[group_id]"
      assert_select "input#concept_integer", :name => "concept[integer]"
      assert_select "input#concept_rubric", :name => "concept[rubric]"
    end
  end
end
