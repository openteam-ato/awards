class Paper < ActiveRecord::Base
  belongs_to :award_category
  belongs_to :contractor
  belongs_to :signer
  has_many   :attachments,    :dependent => :destroy
  has_many   :awards,         :dependent => :destroy
end
