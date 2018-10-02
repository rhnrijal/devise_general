class Award < ApplicationRecord
  has_and_belongs_to_many :talents
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  validates_processing_of :image
  #validates_processing_of :video
  validates_presence_of :category ,:description

  validate :image_size_validation

  private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end

end
