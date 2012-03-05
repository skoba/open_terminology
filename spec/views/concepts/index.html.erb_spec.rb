# -*- coding: utf-8 -*-
require 'spec_helper'

describe "concepts/index" do
  before(:each) do
    japanese_language = Language.new(code: 'ja', description: 'Japanese')
    english_language = Language.new(code: 'en', description: 'English')
    assign(:concepts, [
      stub_model(Concept,
        :language => english_language,
        :concept_id => "0",
        :rubric => "self"
      ),
      stub_model(Concept,
        :language => japanese_language,
        :concept_id => "0",
        :rubric => "自己"
      )
    ])
  end

  it "renders a list of concepts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "en".to_s, :count => 1
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "0".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "self".to_s, :count => 1
  end
end
