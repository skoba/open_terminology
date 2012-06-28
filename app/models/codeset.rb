class Codeset < ActiveRecord::Base
  attr_accessible :external_id, :issuer_id, :openehr_id
  belongs_to :issuer
end
