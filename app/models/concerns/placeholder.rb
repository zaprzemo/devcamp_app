module Placeholder
	extend ActiveSupport::Concern
	def self.image_generator(height:, width:)
		"http://www.placehold.it/#{height}x#{width}"
	end
end
