class Signer < ActiveRecord::Base
  has_many :papers, :dependent => :destroy
end
