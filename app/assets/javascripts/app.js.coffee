class window.wc

	constuctor:  ->
		started = true

	getData: () ->
		$.ajax '/teams.json',
			dataType: 'json'
			error: (jqXHR, textStatus, errorThrown) ->
				console.log 'no'
			success: (data, textStatus, jqXHR) ->
				$.each data, (i,v) =>
					
					if v.player && v.player.id > 0
						$('#player-'+v.id).html(v.player.name)
					else
						$('#player-'+v.id).html('')