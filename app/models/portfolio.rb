class Portfolio < ApplicationRecord
	acts_as_list
	has_many :technologies
	accepts_nested_attributes_for :technologies, reject_if: lambda {|attrs| attrs['name'].blank? }
	include Placeholder
	validates :title, :body, :main_image, :thumb_image, presence: true
	

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults #initialize after def new

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200')
	end
	def self.by_position
		order("position ASC")
	end
end

# ||= it's a shortcut of the following notation
# if self.main_image == nil
		# self.main_image = "http://www.placehold.it/600x400"
# end
