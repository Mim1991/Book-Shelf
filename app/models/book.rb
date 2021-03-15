class Book < ApplicationRecord
  include PublicActivity::Model
  tracked
  belongs_to :user
  has_many :reviews
  
end
