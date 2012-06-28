require 'spec_helper'

describe "concepts/index" do
  before(:each) do
    group = Fabricate(:group)
    assign(:concepts, [
      stub_model(Concept,
        :code => "Code",
        :group_id => group.id,
        :rubric => "Rubric"
      ),
      stub_model(Concept,
        :code => "Code",
        :group_id => group.id,
        :rubric => "Rubric"
      )
    ])
  end

  it "renders a list of concepts" do
    render

    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => 'attestation reason', :count => 2
    assert_select "tr>td", :text => "Rubric".to_s, :count => 2
  end
end
