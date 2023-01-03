const ulEl = document.querySelector(".side-nav");
const loggedInUser = JSON.parse(localStorage.getItem("loggedInUser"));
const loggedEl=document.createElement("div");
const imgEl= document.createElement("img");

if(! loggedInUser.img){
    loggedInUser.img = "/pages/friends/images/585e4bf3cb11b227491c339a.png";
  }
imgEl.setAttribute("src",loggedInUser.img);
imgEl.setAttribute("alt","personal image");
imgEl.classList.add("img-icon");
const textEl= document.createElement("p");
textEl.textContent=loggedInUser.name;
textEl.id="utxtname"
loggedEl.appendChild(imgEl);
loggedEl.appendChild(textEl);
ulEl.appendChild(loggedEl);
loggedEl.classList.add("logged-user");


