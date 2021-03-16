class Book < ApplicationRecord
  include PublicActivity::Common
  # tracked only: :create, :update, owner: ->(controller, model) {controller && controller.current_user}
  belongs_to :user
  has_many :reviews, dependent: :destroy

end
