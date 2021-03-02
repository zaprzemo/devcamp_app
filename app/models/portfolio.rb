class Portfolio < ApplicationRecord
	acts_as_list
	has_many :technologies
	accepts_nested_attributes_for :technologies, reject_if: lambda {|attrs| attrs['name'].blank? }
	
	validates :title, :body, presence: true
	
	mount_uploader :thumb_image, PortfolioUploader
	mount_uploader :main_image, PortfolioUploader

	def self.angular
		where(subtitle: 'Angular')
	end

	def self.by_position
		order("position ASC")
	end

	scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}
end


# ||= it's a shortcut of the following notation
# if self.main_image == nil
		# self.main_image = "http://www.placehold.it/600x400"
# end
