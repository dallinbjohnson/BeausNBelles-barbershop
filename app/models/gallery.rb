class Gallery < ApplicationRecord

	validates_presence_of :title, :image

	mount_uploader :image, GalleryUploader

end
