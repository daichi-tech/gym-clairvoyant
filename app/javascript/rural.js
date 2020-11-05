function open () { 
  const parentMenu = document.getElementsByClassName("parent_menu")
  for (let i = 0; i < parentMenu.length; i++) {
    parentMenu[i].addEventListener("click", function(e) {
      e.preventDefault();
      parentMenu[i].nextElementSibling.classList.toggle("active");
    })
  }
}

window.addEventListener("turbolinks:load", open);