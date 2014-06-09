@worldcup.module "MainApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.Main extends Marionette.ItemView
		template: "main/list/templates/_main"
		tagName: 'li'

	class List.Mains extends Marionette.CompositeView
		template: "main/list/templates/mains"
		itemView: List.Main
		itemViewContainer: '#team-list'