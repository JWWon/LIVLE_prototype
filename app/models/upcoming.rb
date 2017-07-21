class Upcoming < ApplicationRecord
  has_secure_token :upcoming_token
  # self.primary_key = 'upcoming_token'
end
