# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.updateImageSize = ->
  $('.fill').find('img').each ->
    window.setSize($(this))

window.setSize = (obj) ->
  obj.removeClass("wide").removeClass("tall");
  obj.css('margin-top','auto')
  obj.css('margin-left','auto')
  if (obj.width() / obj.height() > obj.parent().width()/obj.parent().height())
    obj.addClass("wide");
    marginLeft = (-obj.width()/2 + obj.parent().width()/2) + "px"
    obj.css('margin-left',marginLeft)
  else
    obj.addClass("tall");
    marginTop = (-obj.height()/2 + obj.parent().height()/2) + "px";
    obj.css('margin-top',marginTop)
  
window.readURL = (input) ->
  prev = $('#preview ' + $(input).data('target'))
  if input.files and input.files[0]
    reader = new FileReader
    reader.onload = (e) ->
      prev.attr 'src', e.target.result
    reader.readAsDataURL input.files[0]

window.pageReady = ->
  $('.colorpicker-input').colorpicker().on 'changeColor.colorpicker', (event) ->
    $('#preview .' + $(this).data('target-class')).css $(this).data('target-attribute'), event.color.toHex()
    if $(this).data('target-class') == 'section-2' && $(this).data('target-attribute') == 'background-color'
      $('#preview .section-3').css 'color', event.color.toHex()
  $('.form-group input[type="text"]').keyup (event) ->
    $('#preview ' + $(this).data('target')).text $(this).val()
  $("#ad_phone_number").mask("(999) 999-9999");
  $("#ad_zipcode").mask("99999");
  window.updateImageSize()
  $('img.profile').on 'load', ->
    window.setSize($(this))
  $('img.house').on 'load', ->
    window.setSize($(this))
  $("input[type='file']").change ->
    window.readURL(this);
    

$(document).ready(window.pageReady)
$(document).on('page:load', window.pageReady)