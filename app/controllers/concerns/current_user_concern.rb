module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
		#super whenever you override method to have the same behaviour as current method 
	end
	def guest_user
		OpenStruct.new(name: "Guest User", first_name: "Guest", last_name:"User", emial: "guest@support.com")		
	end
end
