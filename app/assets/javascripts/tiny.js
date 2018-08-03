$(document).ready(function(){

  if (typeof tinyMCE != 'undefined') {
    tinyMCE.init({
      selector: "textarea.tinymce",
      menu: {
        edit: {title: 'Edit', items: 'undo redo | cut copy paste pastetext | selectall'},
        view: {title: 'View', items: 'visualaid'},
        format: {title: 'Format', items: 'bold italic underline strikethrough superscript subscript | formats | removeformat'}
      }
      //toolbar: 'undo redo | bold italic |  alignleft aligncenter alignright alignjustify | indent outdent'
    });
  }
});