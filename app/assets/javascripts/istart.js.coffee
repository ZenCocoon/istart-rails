jQuery ->
  # Disable submit input after form submission
  $(document).on "submit", 'form', (event) ->
    submit = $('input[type=submit]', @)
    submit.attr('disabled', 'disabled')
    submit.val(submit.data('loading-text')) if submit.data('loading-text')

  # External links
  $(document).on "click", 'a.external', (event) ->
    event.preventDefault()
    window.open(@href)

  # Block as links
  $(document).on "click", '*[data-link-url]', (event) ->
    url = $(@).data('link-url')
    if $(@).hasClass('external')
      window.open(url)
    else
      window.location = url

  # Chosen: http://harvesthq.github.com/chosen/
  try
    $(".chzn-select").chosen()

  # DataTables: http://datatables.net/
  try
    $('.datatables').dataTable
      "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
      "sPaginationType": "bootstrap"
      "oLanguage":
        "sLengthMenu": "_MENU_ records per page"