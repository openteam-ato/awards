class Person < ActiveRecord::Base
  belongs_to  :organization
  has_many    :awards,          :dependent => :destroy
  has_many    :tags_taggables,  :as => :taggable
  has_many    :tags,            :through => :tags_taggables
end
