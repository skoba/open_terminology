class Concept < ActiveRecord::Base
  validates_presence_of :concept_id, :language, :rubric
  has_many :languages
end
