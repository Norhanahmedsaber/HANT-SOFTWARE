let users = [];
document.querySelector("#signin").addEventListener("click", function (e) {
 if(signin()){
    window.location.href = "/pages/profile"
 }
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
        localStorage.setItem("loggedInUser", JSON.stringify(user))
      exist = true;
      return;
    }
  });
 return exist;
  
}


