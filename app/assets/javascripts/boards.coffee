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
  SetupSearch()
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


SetupSearch = () ->
	document.getElementById('search').addEventListener 'click', SearchTags
	document.getElementById('search').addEventListener 'keypress', (e) ->
  	key = e.which or e.keyCode
  	if key == 13
  		SearchTags()
  	return

SearchTags = () ->
  console.log 'Searching...'
  searchterm = document.getElementById('searchbar').value
  boards = document.getElementsByClassName('sound-container')
  n = boards.length
  i = 0
  while i < n
    e = boards[i]
    tags = e.getElementsByClassName('tag')
    nameHasTerm = e.getElementsByClassName('name').length > 0 and e.getElementsByClassName('name')[0].innerText.toLowerCase().indexOf(searchterm) != -1
    if SearchHelper(searchterm, tags) or nameHasTerm
      console.log 'FOUND!'
      e.style.display = 'block'
    else
      e.style.display = 'none'
    i++
  console.log 'Done searching'
  return

SearchHelper = (searchterm, tags) ->
  n = tags.length
  i = 0
  while i < n
    e = tags[i]
    if e.innerText.toLowerCase().indexOf(searchterm) != -1
      return true
    i++
  false
