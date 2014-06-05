Backbone.Marionette.Renderer.render = (template, data) ->
	path = JST["backbone/apps/" + template]
	unless path
		throw ": Bummer. Template not found: #{template}"
	path(data)