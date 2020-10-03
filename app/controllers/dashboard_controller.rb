class DashboardController < ApplicationController
	before_action :authenticate_user!
	layout("dashboard")
	def index
		@properties = current_user.properties
		@buildings = current_user.buildings
		@leases = current_user.leases
		#@inquiry_forms = current_user.recipient_inquiry_forms
		#@ads = []
	end
	def show
	end
end