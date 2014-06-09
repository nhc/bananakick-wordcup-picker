@worldcup.module "GroupsApp", (GroupsApp, App, Backbone, Marionette, $, _) ->

	class GroupsApp.Router extends Marionette.AppRouter
		appRoutes:
			"groups" : 'listGroups'

	API =
		listGroups: ->
			GroupsApp.List.Controller.listGroups()

	App.addInitializer ->
		new GroupsApp.Router
			controller: API 