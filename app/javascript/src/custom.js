
window.onload = function(){
  // function formDivControll(){
  //   var links = document.getElementById("otherDeductions");
  //   if (links.style.display === "flex"){
  //     links.style.display === "none";
  //   }else{
  //     links.style.display === "flex";
  //   }
  // }
  // a = document.getElementById("clickButton");
  // a.addEventListener("click", formDivControll)

  var acc = document.getElementsByClassName("clickbutton");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    /* Toggle between adding and removing the "active" class,
    to highlight the button that controls the panel */
    this.classList.toggle("active");

    /* Toggle between hiding and showing the active panel */
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
}