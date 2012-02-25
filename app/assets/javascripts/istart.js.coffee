jQuery ->
  # Chosen: http://harvesthq.github.com/chosen/
  $(".chzn-select").chosen()

  # Disable submit input after form submission
  $(document).on "submit", 'form', (event) ->
    $('input[type=submit]', @).attr('disabled', 'disabled')

  # External links
  $(document).on "click", 'a.external', (event) ->
    event.preventDefault()
    window.open(@href)

  # Block as links
  $(document).on "click", '*[data-url]', (event) ->
    url = $(@).data('url')
    if $(@).hasClass('external')
      window.open(url)
    else
      window.location = url