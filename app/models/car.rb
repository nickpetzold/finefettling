class Car < ApplicationRecord
  # mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :brand, :model, :photo, :year, presence: true
end
