class Stage < ApplicationRecord
  has_secure_token :stage_token
  # self.primary_key = 'stage_token'

  # validates :title, acceptance: { message: "노래 이름이 있어야 합니다" }
  # validates :artist, acceptance: { message: "가수 이름이 있어야 합니다" }
  # validates :user_id, acceptance: { message: "사용자 아이디가 있어야 합니다" }
  # validates :youtube_id, acceptance: { message: "유투브 링크가 있어야 합니다" }
end
