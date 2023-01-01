const postsEl = document.querySelector(".posts");
const url = new URL(window.location.href);
const id = url.searchParams.get("id");
const users = JSON.parse(localStorage.getItem("users"));
function render() {
  users.forEach((user) => {
    if (user.id === id) {
      const ppEl = document.querySelector(".profile-picture");
      const infoEl = document.querySelector(".bio");
      const imgEl = document.createElement("img");
      console.log(user.imgURL);
      imgEl.setAttribute("src", user.img);
      imgEl.setAttribute("id", "pp");
      const nameEl = document.createElement("h2");
      const bioEl = document.createElement("h3");
      nameEl.textContent = user.name;
      bioEl.textContent = user.bio;

      ppEl.appendChild(imgEl);
      infoEl.appendChild(nameEl);
      infoEl.appendChild(bioEl);
      return;
    }
  });
}
render();
