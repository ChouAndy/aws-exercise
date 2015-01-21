class Download < ActiveRecord::Base
  has_attached_file :upload, styles: { medium: '300x300>', thumb: '100x100>' },
                             url: '/system/:class/:attachment/:id_partition/:style/:hash.:extension',
                             path: ':rails_root/public/system/:class/:attachment/:id_partition/:style/:hash.:extension',
                             hash_secret: 'fa06822165fcfcb16a25b300f7c76671520559e1a0759bb0f5e977416e571b3b5e937af6b144e0095fad23ddf95624c6aaffce375c7a1d8bf5a443bf9d94dd90'
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
