class Organization < ActiveRecord::Base
  has_many :awards,         :dependent => :destroy
  has_many :people,         :dependent => :destroy
  has_many :crews,          :dependent => :destroy
  has_many :tags_taggables, :as => :taggable
  has_many :tags,           :through => :tags_taggables
end
