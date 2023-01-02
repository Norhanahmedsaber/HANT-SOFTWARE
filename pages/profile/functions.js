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

  const labelEl = document.createElement("label");
  labelEl.textContent = post.authorName;


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
  const updateEl = document.createElement("button");
  updateEl.id = "update-btn";
  const updateIcon = document.createElement("img");
  updateIcon.setAttribute("src", "/pages/profile/Images/edit (1).png")
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
  deleteIcon.setAttribute("src", "/pages/profile/Images/delete (2).png")
  deleteEl.appendChild(deleteIcon);

  headerEl.appendChild(labelEl);

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
  listEl.style.display = "block"
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
