module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
		#super whenever you override method to have the same behaviour as current method 
	end
	def guest_user
		guest = GuestUser.new
		guest.name = "Guest User"
		guest.first_name = "Guest"
		guest.last_name = "User"
		guest.email = "guest@example.com"
		guest
	end
end
