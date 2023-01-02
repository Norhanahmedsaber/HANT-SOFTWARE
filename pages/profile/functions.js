let posts = [] ;
function render() {
  renderInfo();
  renderPosts();
}
function deletePost (id){
  
  posts.forEach((post,index)=>{
    if(post.id === id)
    {
      posts.splice(index , 1);
    }
  })
  user.posts=posts;
  localStorage.setItem("loggedInUser",JSON.stringify(user))
  const users = JSON.parse(localStorage.getItem("users"))
  users.forEach((cuser)=>{
    if(cuser.id === user.id)
    {
      cuser.posts = posts;
    }
  })
  localStorage.setItem("users" , JSON.stringify(users))
  renderPosts();
}
function editPost(id)
{
  const post = document.getElementById(id+"t");
  post.readOnly = false;
}
function updatePost(uploaded, id) {
  const ta = document.getElementById(id+"t");
  ta.readOnly = true;
  const newText = ta.value;
  user.posts.forEach((post) => {
    if(post.id === id) {
      post.text = newText;
      post.files = [];
      uploaded.forEach((file)=> {
        post.files.push("/pages/profile/PostFiles/" + file);
      })
    }
  })
  localStorage.setItem("loggedInUser", JSON.stringify(user));

  const users = JSON.parse(localStorage.getItem("users"));
  users.forEach((userLs)=>{
    if(userLs.id === user.id)
    {
      userLs.posts.forEach((post)=>{
        if(post.id === id )
        {
          post.text =newText;
          post.files = [];
          uploaded.forEach((file)=>{
            post.files.push("/pages/profile/PostFiles/" + file)
          })
        }
      })
    }
  
  })
localStorage.setItem("users", JSON.stringify(users));
}

const user = JSON.parse(localStorage.getItem("loggedInUser"));
let info = {
  name: user.name,
  bio: user.bio,
  imgURL: user.img,
};
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
function createPost() {
  const files = [];
  uploaded.forEach((file) => {
    files.push("/pages/profile/postsFiles/" + file);
  });
  const post = {
    id: uuid(),
    authorId: user.id,
    authorName: user.name,
    creationData: new Date(),
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
// toka kant 3ayza tektb comment fa ktabt
function uploadEditFiles(uploaded, listEl) {
  uploaded.forEach((file) => {
    const itemEl = document.createElement("li");
    itemEl.id = file
    itemEl.innerHTML = file;
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
    deleteFileEl.addEventListener("click", ()=> {
      uploaded.forEach((deletedFile, index) => {
        if(deletedFile === itemEl.id) {
          uploaded.splice(index, 1);
        }
      });
      listEl.innerHTML = ""
      uploadEditFiles(uploaded,listEl);
    })

    const buttonEl = document.createElement("button");
    buttonEl.setAttribute("id", "download-btn");
    const iconEl = document.createElement("img");
    iconEl.setAttribute("src", "/pages/profile/Images/download.png");
    buttonEl.style.display = "none";
    buttonEl.appendChild(iconEl);
    itemEl.appendChild(deleteFileEl);
    itemEl.appendChild(buttonEl);
    listEl.appendChild(itemEl);
  });
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
  const postEl = document.createElement("section");
  postEl.classList.add("post");
  postEl.id = post.id;

  const headerEl = document.createElement("header");
  headerEl.classList.add("create-title");

  const img=document.createElement("img");
  if(! user.img){
    user.img = "/pages/friends/images/585e4bf3cb11b227491c339a.png";
  }
  img.setAttribute("src", user.img);
  img.setAttribute("alt","personal image");

  img.classList.add("img-icon");
  headerEl.appendChild(img);

  const labelEl = document.createElement("label");
  labelEl.textContent = post.authorName;

  const labelDateEl = document.createElement("label");
  labelDateEl.textContent = date(post.creationData);

  const updateEl = document.createElement("button");
  updateEl.id = "update-btn";
  const updateIcon = document.createElement("img");
  updateIcon.setAttribute("src", "/pages/profile/Images/edit (1).png");
  updateEl.appendChild(updateIcon);
  const upEl = document.createElement("button");
  upEl.id = "update-btn";
  const upIcon = document.createElement("img");
  upIcon.setAttribute("src", "/pages/profile/Images/file.png")
  upEl.appendChild(upIcon)
  upEl.style.display = "none";
  upEl.addEventListener("click", ()=> {
    document.getElementById(post.id + "i").click();
  })

  const doneEl = document.createElement("button");
  doneEl.id = "doneEdit-btn";
  const doneIcon = document.createElement("img");
  doneIcon.setAttribute("src", "/pages/profile/Images/checkmark.png")
  doneEl.appendChild(doneIcon)
  doneEl.style.display = "none";
  doneEl.addEventListener("click", ()=> {
    upEl.style.display = "none"
    doneEl.style.display = "none";
    updateEl.style.display = "inline-block";
    deleteEl.style.display = "inline-block";
    updateEl.parentElement.parentElement.querySelectorAll("li").forEach ((li) => {
      li.querySelector("#remove-btn").style.display = "none";
      li.querySelector("#download-btn").style.display = "inline-block";
    })
    updatePost(uploaded, post.id);
  })
  let uploaded = [];
  post.files.forEach((file) => {
    uploaded.push(file.substring(25))
  })
  updateEl.addEventListener("click", ()=> {
    editPost(updateEl.parentElement.parentElement.id);
    upEl.style.display = "inline-block";
    doneEl.style.display = "inline-block";
    updateEl.style.display = "none";
    deleteEl.style.display = "none";
    updateEl.parentElement.parentElement.querySelectorAll("li").forEach ((li) => {
      li.querySelector("#remove-btn").style.display = "inline-block";
      li.querySelector("#download-btn").style.display = "none";
    })
    listEl.innerHTML = ""
    uploadEditFiles(uploaded,listEl);
  })
  
  const inputEl = document.createElement("input");
  inputEl.setAttribute("type", "file");
  inputEl.id = post.id+"i";
  inputEl.style.display = "none";
  inputEl.addEventListener("input", (e)=>{
    uploaded.push(e.target.value.substring(12));
    listEl.innerHTML = ""
    uploadEditFiles(uploaded,listEl);
  })
  postEl.appendChild(inputEl);
  updateEl.appendChild(updateIcon);
  const deleteEl = document.createElement("button");
  deleteEl.id = "delete-btn";
  deleteEl.addEventListener("click", (e)=> {
    deletePost(deleteEl.parentElement.parentElement.id);
  })
  const deleteIcon = document.createElement("img");
  deleteIcon.setAttribute("src", "/pages/profile/Images/delete (2).png");
  deleteEl.appendChild(deleteIcon);

  headerEl.appendChild(labelEl);
  headerEl.appendChild(labelDateEl);
  headerEl.appendChild(upEl);
  headerEl.appendChild(doneEl);
  headerEl.appendChild(updateEl);
  headerEl.appendChild(deleteEl);

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
    itemEl.id = file.substring(25)
    itemEl.innerHTML = file.substring(25);

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
    itemEl.id = file;
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
        if (deletedFile === buttonEl.parentElement.id) {
          uploaded.splice(index, 1);
        }
      });
      renderUploaded();
    });
    uploadedEl.appendChild(itemEl);
  });
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

  console.log(date2 - date1);
  if (isNaN(date2.year - date1.year)) return "just now";
  else if (date2.year - date1.year !== 0) {
    return date2.year - date1.year + " year ago";
  } else if (date2.month - date1.month !== 0) {
    return date2.month - date1.month + " month ago";
  } else if (date2.day - date1.day !== 0) {
    return date2.day - date1.day + " day ago";
  } else if (date2.hour - date1.hour !== 0) {
    return date2.hour - date1.hour + " hour ago";
  } else if (date2.min - date1.min !== 0) {
    return date2.min - date1.min + " min ago";
  } else return date2.sec - date1.sec + " sec ago";

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
