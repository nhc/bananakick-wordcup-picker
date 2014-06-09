@worldcup.module "GroupsApp.List", (List, App, Backbone, Marionette, $, _) ->

	List.Controller =

		listGroups: ->
			groups = App.request "group:entities"
			#window.groups = groups
			@layout = @getLayoutView()

			@layout.on "show", =>
				@showGroups groups

			App.mainRegion.show @layout

		showGroups: (groups) ->
			groupsView = @getGroupsView groups
			@layout.groupRegion.show groupsView
			#@layout.groupBregion.show groupsView

		getGroupsView: (groups) ->
			new List.Groups
				collection: groups

		getLayoutView: ->
			new List.Layout