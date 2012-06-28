class Concept < ActiveRecord::Base
  attr_accessible :code, :group_id, :integer, :rubric
  belongs_to :group
end
