class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates_presence_of :user_id
  validates_presence_of :rating
  validates_presence_of :content
end
