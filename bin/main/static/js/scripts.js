// Empty JS for your own code to be here

var offcanvasElementList = [].slice.call(document.querySelectorAll('.offcanvas'));
var offcanvasList = offcanvasElementList.map(function (offcanvasEl) {
  return new bootstrap.Offcanvas(offcanvasEl);
});
