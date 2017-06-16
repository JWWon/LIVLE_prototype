class Artist < ApplicationRecord
  mount_uploader :image, S3Uploader
  # validates :artist, presence: { message: "아티스트를 입력하지 않았습니다" }
  # validates :image, presence: { message: "사진을 넣지 않았습니다" }
end
