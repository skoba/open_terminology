require 'spec_helper'

describe Concept do
  before(:each) do
    @concept = Fabricate(:concept)
  end

  it 'concept is valid' do
    @concept.should be_valid
  end

  it 'concept_id is mandatory' do
    @concept.concept_id = nil
    @concept.should_not be_valid
  end

  it 'language is mandatory' do
    @concept.language = nil
    @concept.should_not be_valid
  end

  it 'ruburic id mandatory' do
    @concept.rubric = nil
    @concept.should_not be_valid
  end
end
