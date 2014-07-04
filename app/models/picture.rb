class Picture < ActiveRecord::Base
  belongs_to :user
  has_one :rating
end
