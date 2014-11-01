class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :price
  validates_presence_of :description
  validates_presence_of :title
  validates_format_of :price, :with => /\A\d+[.]\d\d\Z/, :on => :create

end
