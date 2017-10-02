module GalleriesHelper
	def image_generator(height:, width:)
		"http://placehold.it/#{height}x#{width}"
	end

	def gallery_img img
		if img.model.image?
			img
		else
			# image_generator(height: '350', width: '200')
			"http://bizjunky.com/wp-content/uploads/2015/06/shutterstock_262651283.jpg"
		end
	end
end
