class Portfolio < ApplicationRecord
	validates :title, :body, :main_image, :thumb_image, presence: true
	

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults #initialize after def new

	def set_defaults
		self.main_image ||= "http://www.placehold.it/600x400"
		self.thumb_image ||= "http://www.placehold.it/350x200"
	end
end

# ||= it's a shortcut of the following notation
# if self.main_image == nil
		# self.main_image = "http://www.placehold.it/600x400"
# end
