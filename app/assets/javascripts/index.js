$(document).ready(() => {
  if ($("div:contains('Invalid Email or password.')").length) {
    $('.error').show();
  }
});
