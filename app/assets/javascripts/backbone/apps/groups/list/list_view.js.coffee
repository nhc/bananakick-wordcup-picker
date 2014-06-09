@worldcup.module "GroupsApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.Layout extends App.Views.Layout
		template: 'groups/list/templates/list_layout'

		regions:
			groupRegion: '#group-region'

	class List.Group extends App.Views.ItemView
		template: 'groups/list/templates/_group'

	class List.Groups extends App.Views.CompositeView
		template: 'groups/list/templates/_groups'
		itemView: List.Group
		itemViewContainer: '#group-wrap'