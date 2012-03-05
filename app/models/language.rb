class Language < ActiveRecord::Base
  validates_presence_of :code, :description
  has_one :concept
end
