const messageEl = document.getElementById("errorMessage");
let users = [];
document.querySelector("#signin").addEventListener("click", function (e) {
  e.preventDefault();
  signin();
});
function signin() {
  const emailEl = document.querySelector("#email-text").value;
  const passwordEl = document.querySelector("#password-text").value;

  const userslls = JSON.parse(localStorage.getItem("users"));

  if (userslls) {
    users = userslls;
  }
  if (checkValidations(emailEl, passwordEl, users)) {
    resetPage();
    window.location.href = "/pages/home";
  }
}

function checkValidations(emailEl, passwordEl, users) {
  if (emailEl.length <= 0) {
    messageEl.textContent = "it can't be empty";
    return false;
  }
  if (passwordEl.length <= 0) {
    messageEl.textContent = "it can't be empty";
    return false;
  }
  let exist = false;
  users.forEach((user) => {
    if (emailEl === user.email && passwordEl === user.password) {
      localStorage.setItem("loggedInUser", JSON.stringify(user));
      exist = true;
    }
  });
  messageEl.textContent = "Account not found";

  resetPage();
  return exist;
}
function resetPage() {
  document.querySelector("#email-text").value = "";
  document.querySelector("#password-text").value = "";
}
