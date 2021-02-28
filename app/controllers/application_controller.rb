class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent
	include ZaprzemoViewTool

Devise.setup do |config|
  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :get
end
end
