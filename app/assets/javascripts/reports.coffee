ready = undefined
set_positions = undefined

# iterate through each report element, and set data-pos value based on index value
set_positions = ->
  $('.report').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return

ready = ->
  # call below to set positions initially, when page loads for first time
  set_positions()
  $('.sortable').sortable()
  
  # call sorting logic function, whenever user updates sorting
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []

    # Call below to set positions to report elements with new updated order
    set_positions()

    # update array with each report with its id and new position
    $('.report').each (i) -> 
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return

    # make a call to update new order in the server
    $.ajax
      type: 'PUT'
      url: '/reports/sort'
      data: order: updated_order
    return
  return

$(document).ready ready


