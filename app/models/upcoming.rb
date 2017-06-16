class Upcoming < ApplicationRecord
  # self.per_page = 15
  has_secure_token :upcoming_token
end
