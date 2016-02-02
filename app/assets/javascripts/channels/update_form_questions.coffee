$ ->
  App.cable.subscriptions.create { channel: "UpdateFormQuestionsChannel", update_form_id: $('#questions').data('update_form_id') },

    connected: ->
      $('#questions').on 'click', '.move-up, .move-down', (e)=>
        e.preventDefault()
        $question_el = $(e.currentTarget).parents('li')
        $swap_el = if $(e.currentTarget).hasClass('move-up')
          $question_el.prev()
        else
          $question_el.next()

        return false unless $swap_el.length > 0

        [this_id, target_id] = $.map [$question_el, $swap_el], (i)-> i.attr('id').split('_')[1]

        @swap(this_id, target_id)

    received: (data) ->
      if data.destroyed
        $('#questions').find("#question_#{data.id}").remove()
      else if data.question_updated
        parentEl = $("#question_#{data.id}")
        parentEl.find('.question-text').html(data.text)
      else if data.updated
        $('#questions').find("#question_#{data.id}").data('position', data.position)
        $('#questions').find("#question_#{data.id} span").text(data.text)
        $('#questions').trigger('app:updated')
      else if data.html
        $('#questions').append(data.html)

    swap: (this_id, target_id)->
      @perform('swap', question1_id: this_id, question2_id: target_id)
