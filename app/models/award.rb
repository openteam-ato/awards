class Award < ActiveRecord::Base
  belongs_to :award_kind
  belongs_to :crew
  belongs_to :organization
  belongs_to :paper
  belongs_to :person
  belongs_to :reason
end
