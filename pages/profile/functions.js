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
    id: uuid(),
    authorId: user.id,
    authorName: user.name,
    creationData: getNow(),
    text: document.querySelector(".input2").value,
    files,
  };
  const users = JSON.parse(localStorage.getItem("users"));
  if (post.files.length !== 0 || post.text.length !== 0) {
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
    if (user.posts) {
      user.posts.unshift(post);
    } else {
      const beanList = [];
      beanList.push(post);
      user.posts = beanList;
    }
    localStorage.setItem("loggedInUser", JSON.stringify(user));
    localStorage.setItem("users", JSON.stringify(users));
    document.querySelector(".input2").value = "";
    uploaded = [];
    renderUploaded();
  }
  renderPosts();
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
function renderPosts() {
  const createdEl = document.querySelector(".created");
  createdEl.innerHTML = "";
  if (user.posts) {
    if (user.posts.length !== 0) {
      user.posts.forEach((post) => {
        createdEl.appendChild(renderPost(post));
      });
    }
  }
}
function renderPost(post) {
  const postEl = document.createElement("div");
  postEl.classList.add("post");
  postEl.id = post.id;

  const infoEl = document.createElement("div");
  infoEl.classList.add("user-info");

  const titleEl = document.createElement("h4");
  titleEl.id = "title";
  titleEl.textContent = post.authorName;
  const dateEl = document.createElement("h5");
  dateEl.id = "date";
  dateEl.textContent = post.creationDate;
  console.log(dateEl.textContent);
  const deleteBtn = document.createElement("button");
  deleteBtn.id = "delete-btn";
  const deleteIcon = document.createElement("img");
  deleteIcon.setAttribute("src", "/pages/profile/Images/delete (2).png");
  deleteBtn.appendChild(deleteIcon);
  const updateBtn = document.createElement("button");
  updateBtn.id = "update-btn";
  const updateIcon = document.createElement("img");
  updateIcon.setAttribute("src", "/pages/profile/Images/edit (1).png");
  updateBtn.appendChild(updateIcon);
  infoEl.appendChild(titleEl);
  infoEl.appendChild(dateEl);
  infoEl.appendChild(updateBtn);
  infoEl.appendChild(deleteBtn);

  const textEl = document.createElement("textarea");
  textEl.setAttribute("type", "text");
  textEl.setAttribute("name", "txt");
  textEl.readOnly = true;
  textEl.innerHTML = post.text;
  textEl.style.display = "block";
  const filesEl = document.createElement("div");
  filesEl.classList.add("files");
  post.files.forEach((file) => {
    const item2El = document.createElement("div");
    item2El.id = "item2";
    const aEl = document.createElement("a");
    aEl.setAttribute("href", file);
    aEl.innerHTML = file.substring(26);
    const downloadButton = document.createElement("button");
    downloadButton.id = "download-btn";
    const downloadIcon = document.createElement("img");
    downloadIcon.setAttribute("src", "/pages/profile/Images/download.png");
    downloadButton.appendChild(downloadIcon);
    item2El.appendChild(aEl);
    item2El.appendChild(downloadButton);
    filesEl.appendChild(item2El);
  });
  postEl.appendChild(infoEl);
  postEl.appendChild(textEl);
  postEl.appendChild(filesEl);
  return postEl;
}
function renderUploaded() {
  checkForButtons();
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
function checkForButtons() {
  if (
    uploaded.length !== 0 ||
    document.querySelector(".input2").value.length !== 0
  ) {
    document.querySelector(".done").style.display = "block";
  } else {
    document.querySelector(".done").style.display = "none";
  }
}
