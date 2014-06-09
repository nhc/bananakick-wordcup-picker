@worldcup = do ( Backbone, Marionette ) ->

	App = new Marionette.Application

	App.rootRoute = Routes.groups_path()

	App.on 'initialize:before', (options) ->
		@groups = App.request 'set:firstgroup', options.groups

	App.addRegions
		headerRegion: '#header'
		mainRegion: '#main'
		footerRegion: '#footer'

	App.addInitializer ->
		App.module('MainApp').start()
		App.module('FooterApp').start()

	App.on 'initialize:after', (options) ->
		if Backbone.history
			Backbone.history.start()
			@navigate(App.rootRoute, trigger: true) if @getCurrentRoute() is ""

	App