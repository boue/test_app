class Rating < ActiveRecord::Base
  belongs_to :picture
  acts_as_votable 
end
