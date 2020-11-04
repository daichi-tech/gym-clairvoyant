function open () { 
  const cityMenu = document.querySelectorAll(".city_list > a")
  for (let i = 0; i < cityMenu.length; i++) {
    cityMenu[i].addEventListener("click", function(e) {
      e.preventDefault();
      cityMenu[i].nextElementSibling.classList.toggle("active");
    })
  }
}

window.addEventListener("turbolinks:load", open);