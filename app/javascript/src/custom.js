
window.onload = function(){
  function formDivControll(){
    var links = document.getElementById("otherDeductions");
    if (links.style.display === "flex"){
      links.style.display === "none";
    }else{
      links.style.display === "flex";
    }
  }
  a = document.getElementById("clickButton");
  a.addEventListener("click", formDivControll)
}