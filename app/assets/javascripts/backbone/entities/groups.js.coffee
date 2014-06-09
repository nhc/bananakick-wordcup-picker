@worldcup.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Group extends Entities.Model

	class Entities.GroupsCollection extends Entities.Collection
		model: Entities.Group
		url: -> Routes.groups_path()

	API =
		setGroups: (groups) ->
			new Entities.GroupsCollection
				collection: groups
		setFirstGroup: (groups) ->
			new Entities.Group groups

		getGroupEntities: ->
			groups = new Entities.GroupsCollection
			groups.fetch
				reset: true
			groups

	App.reqres.setHandler 'group:entities', ->
		API.getGroupEntities()