$(function(){
  $("#select_chapter").bind("change", function () {
    var url = "/chapters/" + $(this).val()
    if (url) {
      window.location.replace(url);
    }
    return false;
  });
});
