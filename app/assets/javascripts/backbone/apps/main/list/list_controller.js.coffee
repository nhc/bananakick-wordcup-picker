@worldcup.module "MainApp.List", (List, App, Backbone, Marionette, $, _) ->

	List.Controller =

		listMain: ->

			#teams = @getTeamsCollection()
			teams = App.request "main:teams"
			players = App.request "main:players"
			window.teams = teams
			window.players = players

			mainView = @getMainView teams
			#App.mainRegion.show mainView

		getTeamsCollection: ->
			

		getMainView: (teams,players)->
			new List.Mains
				collection: teams