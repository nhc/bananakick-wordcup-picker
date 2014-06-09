class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	#@groups = Group.all
  	#gon.rabl 'app/views/groups/index.json.rabl', as: 'groups'
  end
end
