# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# (($) ->
#   $(document).on "turbolinks:load" ->
#     $('.board-outer').height $('.board-outer').width()
#     $('.board-inner').height $('.board-inner').width()
#     $('div.board-panel').height $('.board-inner').height()
#     $('div.board-panel').width $('.board-inner').width()
#   	return
#   return
# ) jQuery

ready = ->
  $('.board-outer').height $('.board-outer').width()
  $('.board-inner').height $('.board-inner').width()
  $('div.board-panel').height $('.board-inner').height()
  $('div.board-panel').width $('.board-inner').width()
  return

$(document).on('turbolinks:load', ready)

@validateFiles = (inputFile) -> 
	maxExceededMessage = "This file exceeds the maximum allowed file size (5MB)"
	maxFileSize = $(inputFile).data('max-file-size')
	sizeExceeded = false

	$.each(inputFile.files, () ->
		sizeExceeded = true if (this.size && maxFileSize && this.size > parseInt(maxFileSize))
	)

	$("#fileError").text(maxExceededMessage) if sizeExceeded
	$("#new_sound .actions > input").attr disabled: 'disabled' if sizeExceeded
	return

