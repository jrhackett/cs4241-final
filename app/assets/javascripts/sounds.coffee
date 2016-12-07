# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->
	@handleAudioImageClick = (name) ->
		audiostr = "#" + name + "-audio"
		playpausestr = "#sound-play-pause-" + name
		audio = $(audiostr)[0];
		if audio.paused
			audio.play()
			$(playpausestr).removeClass("fa-play-circle-o")
			$(playpausestr).addClass("fa-pause-circle-o")
		else
			audio.pause()
			$(playpausestr).addClass("fa-play-circle-o")
			$(playpausestr).removeClass("fa-pause-circle-o")
) jQuery
