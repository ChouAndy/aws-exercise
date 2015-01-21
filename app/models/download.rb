class Download < ActiveRecord::Base
  has_attached_file :upload, styles: {
    medium: '300x300>',
    thumb: '100x100>'
  }
  validates_attachment :upload, size: { in: 0..5.megabytes },
                                file_type_ignorance: true
  validates :title, presence: true
  validates :upload, presence: true

  before_post_process :resize_images

  def image?
    upload_content_type =~ /\Aimage\/.*\Z/
  end

  private

  def resize_images
    return false unless image?
  end
end
