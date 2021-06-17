class Blog < ApplicationRecord
  validates :content,  length: { in: 1..140 }
  validates :content, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
   mount_uploader :image, ImageUploader
end
