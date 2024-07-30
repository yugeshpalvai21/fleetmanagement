ready = undefined
set_positions = undefined

set_positions = ->
  $('.report').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return

ready = ->
  set_positions()
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    set_positions()
    $('.report').each (i) -> 
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/reports/sort'
      data: order: updated_order
    return
  return

$(document).ready ready