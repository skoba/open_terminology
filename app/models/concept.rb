class Concept < ActiveRecord::Base
  validates_presence_of :concept_id, :language_id, :rubric
  belongs_to :language
end
