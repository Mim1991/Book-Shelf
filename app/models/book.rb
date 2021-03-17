class Book < ApplicationRecord
  include PublicActivity::Common

  belongs_to :user
  has_many :reviews, dependent: :destroy

end
