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
  infoEl.appendChild(titleEl);
  infoEl.appendChild(dateEl);

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
