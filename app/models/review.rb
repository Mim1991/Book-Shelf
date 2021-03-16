class Review < ApplicationRecord
  include PublicActivity::Common
  # tracked owner: ->(controller, model) {controller && controller.current_user}
  belongs_to :book
  
end
