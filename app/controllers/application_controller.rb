class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@groups = Group.all
  	#gon.rabl 'app/views/groups/index.json.rabl', as: 'groups'

  	@groupA = Group.find(1)
  	@groupB = Group.find(2)
  	@groupC = Group.find(3)
  	@groupD = Group.find(4)
  	@groupE = Group.find(5)

  	@groupF = Group.find(6)
  	@groupG = Group.find(7)
  	@groupH = Group.find(8)

  end
end
