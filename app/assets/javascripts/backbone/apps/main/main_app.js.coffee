@worldcup.module "MainApp", (MainApp, App, Backbone, Marionette, $, _) ->

	@startWithParent = false

	API = 
		listMain: ->
			MainApp.List.Controller.listMain()

	MainApp.on 'start', ->
		API.listMain()
