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
    $('.datatable').dataTable
      "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
      "sPaginationType": "bootstrap"
      "bStateSave": true
      "fnStateSave": (oSettings, oData) ->
        localStorage.setItem 'DataTables_'+window.location.pathname, JSON.stringify(oData)
      "fnStateLoad": (oSettings) ->
        JSON.parse localStorage.getItem('DataTables_'+window.location.pathname)
      "aoColumnDefs": [
        { "bSortable": false, "aTargets": [ "sort-no" ] },,
        { "sType": "string",  "aTargets": [ "sort-as-string" ] }
        { "sType": "numeric", "aTargets": [ "sort-as-numeric" ] },
        { "sType": "date",    "aTargets": [ "sort-as-date" ] },
        { "sType": "dom",     "aTargets": [ "sort-as-dom" ] }
      ]
      "oLanguage":
        "sLengthMenu": "_MENU_ records per page"