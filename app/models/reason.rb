class Reason < ActiveRecord::Base
  has_many :awards, :dependent => :destroy
end
