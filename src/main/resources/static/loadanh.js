var loadA = document.getElementById("loadA");
var tat = document.getElementById("tat");
console.log( document.getElementById("loadA"));

function change(x) {
  loadA.style.display = "block";
  tat.style.display = "block";
  var srcanh = x.src;
  document.getElementById("zoom").src = srcanh;
}


tat.onclick = tatanh;
function tatanh() {
  loadA.style.display = "none";
  tat.style.display = "none";
}
