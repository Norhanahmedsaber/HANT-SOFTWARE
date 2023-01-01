let users = [];
const loggedInUser = JSON.parse(localStorage.getItem("loggedInUser"));
const wrapperEl = document.querySelector(".wrapper");
users = JSON.parse(localStorage.getItem("users"));
function render() {
  if (users) {
    users.forEach((user) => {
      console.log(user.id + " : " + loggedInUser.id);
      if (user.id !== loggedInUser.id) {
        const divEl = document.createElement("div");
        const aEl = document.createElement("a");
        aEl.setAttribute("href", `/pages/friends/friend/?id=${user.id}`);
        aEl.innerHTML = user.name;
        divEl.appendChild(aEl);
        wrapperEl.appendChild(divEl);
      }
    });
  }
}
render();
