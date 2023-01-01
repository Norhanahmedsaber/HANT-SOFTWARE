let users = [];
const table = document.querySelector(".div-table");
const loggedInUser = JSON.parse(localStorage.getItem("loggedInUser"));
const wrapperEl = document.querySelector(".wrapper");
users = JSON.parse(localStorage.getItem("users"));
function render() {
  if (users) {
    users.forEach((user, index) => {
      if (user.id !== loggedInUser.id) {
        const html = `<div >   
        <img class="image-1" src=${
          user.img
        } alt="personal image" title="friend name">
        <p class="name">${user.name} </p>
        <button id="no${index}" class="edit-btn" title="Show profile">
            <a href=${`/pages/friends/friend/?id=${user.id}`}><img src="images/headhunting.png" alt="" /></a>
        </button>
        <hr>
        </div>`;
        table.innerHTML += html;
      }
    });
  }
}
render();
