let users = [];

let login = function (email, password) {
  return true;
};

document.querySelector("#signin").addEventListener("click", function (e) {
  console.log(signin());
});
function signin() {
  const emailEl = document.querySelector("#email-text").value;
  const passwordEl = document.querySelector("#password-text").value;
  const userslls = JSON.parse(localStorage.getItem("users"));
  if (userslls) {
    users = userslls;
  }
  let exist = false;
  users.forEach((user) => {
    if (emailEl === user.email && passwordEl === user.password) {
      exist = true;
      return;
    }
  });
  return exist;
}
