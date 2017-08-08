$(function(){
  contactForm()
})

function contactForm () {
  var form = $('.contact-form')
  form.submit(function () {
    $this = $(this)
    $.post($(this).attr('action'),
      $this.serialize(),
      function () {
        $this[0].reset() // clear form

        showAlert('#contact-message');
      }
      , 'json')
    return false
  })
}
