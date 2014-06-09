@worldcup.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Main extends Entities.Model

	class Entities.MainCollection extends Entities.Collection
		model: Entities.Main

	API =

		getTeams: ->
			new Backbone.Collection [
				{ id: 1, name: 'Brazil' }
				{ id: 2, name: 'England' }
			]

		getPlayers: ->
			new Backbone.Collection [
				{ id: 1, name: 'Megan' }
				{ id: 2, name: 'Matt' }
			]

	App.reqres.setHandler "main:teams", ->
		API.getTeams()

	App.reqres.setHandler "main:players", ->
		API.getPlayers()