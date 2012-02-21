class Language < ActiveRecord::Base
  validates_presence_of :code, :description
  belongs_to :concept
end
