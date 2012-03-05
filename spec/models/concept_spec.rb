require 'spec_helper'

describe Concept do
  before(:each) do
    language = Fabricate(:language)
    @concept = Fabricate(:concept)
  end

  it 'concept is valid' do
    @concept.should be_valid
  end

  it 'concept_id is mandatory' do
    @concept.concept_id = nil
    @concept.should_not be_valid
  end

  it 'language_id is mandatory' do
    @concept.language_id = nil
    @concept.should_not be_valid
  end

  it 'ruburic id mandatory' do
    @concept.rubric = nil
    @concept.should_not be_valid
  end

  it 'language code is ja' do
    @concept.language.code.should == 'ja'
  end
end
