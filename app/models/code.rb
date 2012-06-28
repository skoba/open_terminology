class Code < ActiveRecord::Base
  attr_accessible :codeset_id, :value
  belongs_to :codeset
end
