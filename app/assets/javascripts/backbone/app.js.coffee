@worldcup = do ( Backbone, Marionette ) ->

	App = new Marionette.Application

	App.addRegions
		headerRegion: '#header'
		mainRegion: '#main'
		footerRegion: '#footer'

	App.addInitializer ->
		#App.module('HeaderApp').start()
		App.module('FooterApp').start()

	App.on 'initialize:after', ->
		if Backbone.history
			Backbone.history.start()
	App