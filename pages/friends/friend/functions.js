const users = JSON.parse(localStorage.getItem("users"));

function renderInfo() {
  users.forEach((user) => {
    if (user.id === id) {
      const ppEl = document.querySelector(".profile-picture");
      const infoEl = document.querySelector(".bio");
      const imgEl = document.createElement("img");
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
function renderPosts(id) {
  const createdEl = document.querySelector(".created");
  createdEl.innerHTML = "";
  users.forEach((user) => {
    if (user.id === id) {
      if (user.posts) {
        if (user.posts.length !== 0) {
          user.posts.forEach((post) => {
            createdEl.appendChild(renderPost(post));
          });
        }
      }
    }
  });
}

function renderPost(post) {
  const postEl = document.createElement("section");
  postEl.classList.add("post");
  postEl.id = post.id;

  const headerEl = document.createElement("header");
  headerEl.classList.add("create-title");

  const labelEl = document.createElement("label");
  labelEl.textContent = post.authorName;

  const updateEl = document.createElement("button");
  updateEl.id = "update-btn";
  const updateIcon = document.createElement("img");
  updateIcon.setAttribute("src", "/pages/profile/Images/edit (1).png")
  updateEl.appendChild(updateIcon);

  const deleteEl = document.createElement("button");
  deleteEl.id = "delete-btn";
  const deleteIcon = document.createElement("img");
  deleteIcon.setAttribute("src", "/pages/profile/Images/delete (2).png")
  deleteEl.appendChild(deleteIcon);

  headerEl.appendChild(labelEl);
  headerEl.appendChild(updateEl);
  headerEl.appendChild(deleteEl);

  const formEl = document.createElement("form");
  formEl.setAttribute("action", "#");
  const textAreaEl = document.createElement("textarea");
  textAreaEl.classList.add("input2");
  textAreaEl.readOnly = true;
  textAreaEl.setAttribute("type", "text");
  textAreaEl.setAttribute("name", "txt");
  textAreaEl.innerHTML = post.text;
  textAreaEl.style.display = "block";
  
  formEl.appendChild(textAreaEl);

  const listEl = document.createElement("div");
  listEl.classList.add("list");
  listEl.style.display = "block"
  post.files.forEach((file) => {
    const itemEl = document.createElement("li");
    itemEl.id = file.substring(26)
    itemEl.innerHTML = file.substring(26);
    const labelEl = document.createElement("span");
    labelEl.classList.add("cancel");
    const iEl = document.createElement("i");
    labelEl.appendChild(iEl);
    itemEl.appendChild(labelEl);
    const buttonEl = document.createElement("button");
    buttonEl.setAttribute("id", "download-btn");
    const iconEl = document.createElement("img");
    iconEl.setAttribute("src", "/pages/profile/Images/download.png");
    buttonEl.appendChild(iconEl);
    itemEl.appendChild(buttonEl);
    listEl.appendChild(itemEl);
    
    
  });
  postEl.appendChild(headerEl);
  postEl.appendChild(formEl);
  postEl.appendChild(listEl);
  return postEl;
}
