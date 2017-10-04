class Gallery < ApplicationRecord

	validates_presence_of :title

	mount_uploader :image, GalleryUploader

end
