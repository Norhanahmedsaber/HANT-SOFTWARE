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
  labelEl.classList.add("name")
  const labelDateEl = document.createElement("label");
  labelDateEl.textContent = date(post.creationData);
  labelEl.classList.add("date")
  const img=document.createElement("img");
  users.forEach((u)=> {
    if(id === u.id) {
      if(!u.img){
        u.img = "/pages/friends/images/585e4bf3cb11b227491c339a.png";
      }
      img.setAttribute("src", u.img);
    }
  })
  
  img.setAttribute("class","personalPhoto");

  img.classList.add("img-icon");
  headerEl.appendChild(img);

  const updateEl = document.createElement("button");
  updateEl.id = "update-btn";
  const updateIcon = document.createElement("img");
  updateIcon.setAttribute("src", "/pages/profile/Images/edit (1).png")
  updateEl.appendChild(updateIcon);

  const deleteEl = document.createElement("button");
  deleteEl.id = "delete-btn";
  deleteEl.addEventListener("click", (e)=> {
    deletePost(deleteEl.parentElement.parentElement.id);
  })
  
  headerEl.appendChild(labelEl);
  headerEl.appendChild(labelDateEl);

  const formEl = document.createElement("form");
  formEl.setAttribute("action", "#");
  const textAreaEl = document.createElement("textarea");
  textAreaEl.classList.add("input2");
  textAreaEl.id = post.id+"t";
  textAreaEl.readOnly = true;
  textAreaEl.setAttribute("type", "text");
  textAreaEl.setAttribute("name", "txt");
  textAreaEl.innerHTML = post.text;
  textAreaEl.style.display = "block";

  formEl.appendChild(textAreaEl);

  const listEl = document.createElement("div");
  listEl.classList.add("list");
  listEl.style.display = "block";
  post.files.forEach((file) => {
    const itemEl = document.createElement("li");
    itemEl.id = file.substring(25);
    let str = encodeURIComponent(itemEl.id);
    itemEl.innerHTML = `<a href=/pages/profile/postFiles/${str} target="_blank">` + file.substring(25) +"</a>";
    const labelEl = document.createElement("span");
    labelEl.classList.add("cancel");
    const iEl = document.createElement("i");
    labelEl.appendChild(iEl);
    itemEl.appendChild(labelEl);

    const deleteFileEl = document.createElement("button");
    deleteFileEl.setAttribute("id", "remove-btn");
    const deleteIcon = document.createElement("img");
    deleteIcon.setAttribute("src", "/pages/profile/Images/close.png");
    deleteFileEl.appendChild(deleteIcon);
    deleteFileEl.style.display = "none";

    const buttonEl = document.createElement("button");
    buttonEl.setAttribute("id", "download-btn");
    const iconEl = document.createElement("img");
    iconEl.setAttribute("src", "/pages/profile/Images/download.png");
    buttonEl.addEventListener("click", () => {
      const link = document.createElement("a");
      link.download = itemEl.id;
      link.href = "/pages/profile/postFiles/" + itemEl.id;
      link.click();
    })
    buttonEl.appendChild(iconEl);
    itemEl.appendChild(deleteFileEl);
    itemEl.appendChild(buttonEl);
    listEl.appendChild(itemEl);
  });

  postEl.appendChild(headerEl);
  postEl.appendChild(formEl);
  postEl.appendChild(listEl);
  return postEl;
}
function renderUploaded() {
  if (uploaded.length === 0) {
    uploadedEl.parentElement.style.display = "none";
    return;
  }
  uploadedEl.parentElement.style.display = "block";
  uploadedEl.innerHTML = "";
  uploaded.forEach((file) => {
    const itemEl = document.createElement("li");
    itemEl.id = file
    itemEl.innerHTML = file;
    const labelEl = document.createElement("span");
    labelEl.classList.add("cancel");
    const iEl = document.createElement("i");
    labelEl.appendChild(iEl);
    itemEl.appendChild(labelEl);
    const buttonEl = document.createElement("button");
    buttonEl.setAttribute("id", "remove-btn");
    const iconEl = document.createElement("img");
    iconEl.setAttribute("src", "/pages/profile/Images/close.png");
    buttonEl.appendChild(iconEl);
    itemEl.appendChild(buttonEl);
    buttonEl.addEventListener("click", () => {
      uploaded.forEach((deletedFile, index) => {
        if (
          deletedFile ===
          buttonEl.parentElement.id
        ) {
          uploaded.splice(index, 1);
        }
      });
      renderUploaded();
    });
    
    uploadedEl.appendChild(itemEl);
  });
}
function getNow() {
  var today = new Date();
  const date2 = {
    year: today.getFullYear(),
    month: today.getMonth() + 1,
    day: today.getDay() + 1,
    hour: today.getHours() - 2,
    min: today.getMinutes(),
    sec: today.getSeconds(),
  };
  return date2;
}
function date(d) {
  const date1 = {
    year: parseInt(d.toString().substring(0, 4)),
    month: parseInt(d.toString().substring(5, 7)),
    day: parseInt(d.toString().substring(8, 10)),
    hour: parseInt(d.toString().substring(11, 13)),
    min: parseInt(d.toString().substring(14, 16)),
    sec: parseInt(d.toString().substring(17, 19)),
  };

  const date2 = getNow();
  if (isNaN(date2.year - date1.year)) return "just now";
  else if (date2.year - date1.year !== 0) {
    return date2.year - date1.year + " years ago";
  } else if (date2.month - date1.month !== 0) {
    return date2.month - date1.month + " months ago";
  } else if (date2.day - date1.day !== 0) {
    return date2.day - date1.day + " days ago";
  } else if (date2.hour - date1.hour !== 0) {
    return date2.hour - date1.hour + " hours ago";
  } else if (date2.min - date1.min !== 0) {
    return date2.min - date1.min + " mins ago";
  } else return date2.sec - date1.sec + " seconds ago";

  // console.log(d);
  // console.log(date1.year);
  // console.log(date1.month);
  // console.log(date1.day);
  // console.log(date1.hour);
  // console.log(date1.min);
  // console.log(date1.sec);

  // const x = new Date() - d;
  // if (x / 1000 < 60) return Math.floor(x / 1000) + " sec";
  // else if (x / (1000 * 60) < 60) return Math.floor(x / (1000 * 60)) + " Min";
  // else if (x / (1000 * 60 * 60) < 24)
  //   return Math.floor(x / (1000 * 60 * 60)) + " Hour";
  // else if (x / (1000 * 60 * 60 * 24) < 30)
  //   return Math.floor(x / (1000 * 60 * 60 * 24)) + " Day";
  // else if (x / (1000 * 60 * 60 * 24 * 30) < 12)
  //   return Math.floor(x / (1000 * 60 * 60 * 24 * 30)) + " Month";
  // else return Math.floor(x / (1000 * 60 * 60 * 24 * 30 * 356.25)) + " year";
}