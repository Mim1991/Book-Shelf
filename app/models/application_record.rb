class ApplicationRecord < ActiveRecord::Base
  # Makes sure you can't instantiate AR Class
  self.abstract_class = true
end
