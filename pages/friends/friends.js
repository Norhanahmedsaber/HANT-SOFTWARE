let users = [];

const table = document.querySelector(".div-table");
const loggedInUser = JSON.parse(localStorage.getItem("loggedInUser"));
const wrapperEl = document.querySelector(".wrapper");
users = JSON.parse(localStorage.getItem("users"));

let filteredUsers=users;


function render() {
  table.innerHTML = ""
  if (filteredUsers) {
    filteredUsers.forEach((user, index) => {
      if(!user.img){
        user.img = "/pages/friends/images/585e4bf3cb11b227491c339a.png";
      }
      if (user.id !== loggedInUser.id) {
        const html = `<div  class="sss">   
        <img class="image-1" src=${
          user.img
        } alt="personal image" title="friend name">
        <p class="name">${user.name} </p>
        <button id="no${index}" class="edit-btn" title="Show profile">
            <a href=${`/pages/friends/friend/?id=${user.id}`}><img src="images/headhunting.png" alt="show profile" /></a>
        </button>
        <hr>
        </div>`;
        table.innerHTML += html;
      const title=document.createElement('h1');
      
        
      }
    });
  }
}
render();

const search =document.querySelector(" input");

const filterFriends = term=>{
  filteredUsers = users.filter( user=> {
    if (user.name.toLowerCase().includes(term)) {
      return user;
    }
     });
}

search.addEventListener("input" , e=>{
const term = search.value.trim().toLowerCase();
filterFriends(term);
render();
  });


 

