const ulEl = document.querySelector(".side-nav");
const loggedInUser = JSON.parse(localStorage.getItem("loggedInUser"));
const loggedEl=document.createElement("div");
const imgEl= document.createElement("img");
imgEl.setAttribute("src",loggedInUser.img);
const textEl= document.createElement("p");
textEl.textContent=loggedInUser.name;
loggedEl.appendChild(imgEl);
loggedEl.appendChild(textEl);
ulEl.appendChild(loggedEl);
loggedEl.classList.add("logged-user");


