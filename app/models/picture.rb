class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :picture, PictureUploader
  belongs_to :user
  validates :image_or_content, presence: true
  attr_accessor :action_required
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  
  private
  def image_or_content
    image.presence or content.presence
  end
end
