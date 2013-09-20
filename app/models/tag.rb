class Tag < ActiveRecord::Base
  has_many :tags_taggables
end
