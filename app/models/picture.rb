class Picture < ActiveRecord::Base
  belongs_to :user
  has_one :rating
  acts_as_votable 
end
