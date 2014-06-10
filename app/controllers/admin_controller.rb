class AdminController < ApplicationController

	before_filter :authenticate
 
	def index
		
	end

	protected
    
    def authenticate
      authenticate_or_request_with_http_basic do |user, password|
        user == 'stay' && password == 'out'
      end
    end

end
