root = exports ? this
root.ks = do ->
  DELETE_KEY = 8
  SHIFT_KEY = 16
  HIGHLIGHT_CLASS = "highlight"
  $ticker = $ "#ticker"
  $textModal = $ "#text-modal"
  $keyboard = $ "#keyboard"
  keyboardEvents = []

  ks =
    init: ->
      $(document).keydown (e) ->
        originalEvent = e.originalEvent
        keyCode = originalEvent.keyCode
        keyLocation = originalEvent.keyLocation
        keyboardEvents.push originalEvent
        if DELETE_KEY == keyCode
          originalEvent.preventDefault()
        if SHIFT_KEY == keyCode
          $keyboard.find("button." + SHIFT_KEY).removeClass(HIGHLIGHT_CLASS)
          originalEvent.preventDefault()
        $keyboard.find("button." + keyCode + (if keyLocation > 0 then "." + keyLocation else "")).addClass(HIGHLIGHT_CLASS)
        console.log originalEvent

      $(document).keyup (e) ->
        originalEvent = e.originalEvent
        keyCode = originalEvent.keyCode
        keyLocation = originalEvent.keyLocation
        $keyboard.find("button." + keyCode + (if keyLocation > 0 then "." + keyLocation else "")).removeClass(HIGHLIGHT_CLASS)
