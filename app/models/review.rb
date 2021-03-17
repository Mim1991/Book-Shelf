class Review < ApplicationRecord
  include PublicActivity::Common
  belongs_to :book

  validates :title, presence: true
  validates :content, presence: true
  validates :date_read, presence: true
end
