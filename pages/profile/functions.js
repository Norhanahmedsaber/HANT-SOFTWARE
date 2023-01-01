function render() {
  renderInfo();
  renderPosts();
}
const user = JSON.parse(localStorage.getItem("loggedInUser"));
let info = {
  name: user.name,
  bio: user.bio,
  imgURL: user.img,
};
function getNow() {
  var today = new Date();
  var date =
    today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate();
  var time =
    today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
  return date + " " + time;
}
function createPost() {
  const files = [];
  uploaded.forEach((file) => {
    files.push("/pages/profile/postsFiles/" + file);
  });
  const post = {
    authorId: user.id,
    authorName: user.name,
    creationData: getNow(),
    text: document.querySelector(".input2").value,
    files,
  };
  const users = JSON.parse(localStorage.getItem("users"));
  users.forEach((cuser) => {
    if (cuser.id === user.id) {
      if (cuser.posts) {
        cuser.posts.unshift(post);
      } else {
        const beanList = [];
        beanList.push(post);
        cuser.posts = beanList;
      }
      return;
    }
  });
  localStorage.setItem("users", users);
}
function renderInfo() {
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
function renderPosts() {}
function renderUploaded() {
  if (uploaded.length === 0) {
    uploadedEl.parentElement.style.display = "none";
    return;
  }
  uploadedEl.parentElement.style.display = "block";
  uploadedEl.innerHTML = "";
  uploaded.forEach((file) => {
    const itemEl = document.createElement("div");
    itemEl.classList.add("item");
    const labelEl = document.createElement("label");
    labelEl.textContent = file;
    const buttonEl = document.createElement("button");
    buttonEl.setAttribute("id", "remove-btn");
    buttonEl.addEventListener("click", () => {
      uploaded.forEach((deletedFile, index) => {
        if (
          deletedFile ===
          buttonEl.parentElement.querySelector("label").textContent
        ) {
          uploaded.splice(index, 1);
        }
      });
      renderUploaded();
    });
    const iconEl = document.createElement("img");
    iconEl.setAttribute("src", "/pages/profile/Images/close.png");
    buttonEl.appendChild(iconEl);
    itemEl.appendChild(labelEl);
    itemEl.appendChild(buttonEl);
    uploadedEl.appendChild(itemEl);
  });
}
