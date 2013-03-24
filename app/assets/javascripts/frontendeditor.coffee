//= require jquery-ui
//= require underscore
//= require backbone
//= require ckeditor/init_ckeditor
//= require frontend_editor/frontend_editor

#Init the backbone application when jQuery is ready
$(document).ready ->
  FrontendEditor.init()

$.ajaxSetup
  beforeSend: (xhr) ->
    xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
