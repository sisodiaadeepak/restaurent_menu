$(document).on 'turbolinks:load', ->
  # Initialize Input Text
  M.updateTextFields()
  # Initialize collapsible
  $('.collapsible').collapsible()
  # Initialize sidenav
  $('.sidenav').sidenav()
  # Initialize tooltip
  $('.tooltipped').tooltip()
  # Initialize floating Action Button
  $('.fixed-action-btn').floatingActionButton
    hoverEnabled: false
    direction: 'left'
  # Toast for error and notice accorinding to screen size
  if $(window).width() >= 992
    $('#error_explanation ul li').each ->
      M.toast
        html: $(this).text()
        classes: 'red rounded'
    if $('.notice').text().length
      M.toast
        html: $('.notice').text()
        classes: 'rounded'
    if $('.alert').text().length
      M.toast
        html: $('.alert').text()
        classes: 'red rounded'
  else
    $('#error_explanation ul li').each ->
      M.toast
        html: $(this).text()
        classes: 'red'
    if $('.notice').text().length
      M.toast html: $('.notice').text()
    if $('.alert').text().length
      M.toast
        html: $('.alert').text()
        classes: 'red'

$(document).on 'ready turbolinks:before-cache', ->
  elem = document.querySelector('.sidenav')
  instance = M.Sidenav.getInstance(elem)
  instance.destroy()