const user = JSON.parse(localStorage.getItem("loggedInUser"));
let info = {
  name: user.name,
  bio: user.bio,
  imgURL: user.img,
};
function render() {
  const ppEl = document.querySelector(".profile-picture");
  const infoEl = document.querySelector(".bio");
  const imgEl = document.createElement("img");
  imgEl.setAttribute("src", info.imgURL);
  imgEl.setAttribute("id", "pp");
  const nameEl = document.createElement("h2");
  const bioEl = document.createElement("h3");
  nameEl.textContent = info.name;
  bioEl.textContent = info.bio;

  ppEl.appendChild(imgEl);
  infoEl.appendChild(nameEl);
  infoEl.appendChild(bioEl);
}
render();
document.getElementById("edit-btn").addEventListener("click", () => {
  window.location.href = "/pages/profile/edit.html";
});
