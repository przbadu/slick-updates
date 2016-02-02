# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('form.new_question').on('ajax:success', (e, data, status, xhr) ->
    $(this).find('#question_text').val('')
  ).on('submit', (e)->
    $('p.empty-questions').remove()
  )

  $('#questions').on 'app:updated', ->
    $li_elements = $(this).children('li')

    $li_elements.sort (a, b)->
      $(a).data('position') - $(b).data('position')

    $(this).append($li_elements)

$(document).on 'click', '#cancel-update', (e)->
  e.preventDefault()
  id      = $(this).data('id')
  old_txt = $(this).data('old-text')
  $("#question_#{id}").find('.question-text').html(old_txt)

# press ESC to skip update
$(document).on 'keyup', (e)->
  if e.keyCode is 27 # esc key
    $('#cancel-update').click()
