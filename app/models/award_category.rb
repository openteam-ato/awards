class AwardCategory < ActiveRecord::Base
  has_many :award_kinds,   :dependent => :destroy
  has_many :papers,        :dependent => :destroy
end
