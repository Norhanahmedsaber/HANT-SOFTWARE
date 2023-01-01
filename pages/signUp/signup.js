let users = [];
const userslls = JSON.parse(localStorage.getItem("users"));
const messageEl = document.getElementById("message");
let aEL = document.createElement("a");
const aM = document.createTextNode("login");
aEL.appendChild(aM);
if (userslls) {
  users = userslls;
}
document.querySelector("#signup").addEventListener("click", () => {
  signup();
  resetPage();
});
function signup() {
  const email = document.querySelector("#email-Text").value;
  const password = document.querySelector("#password-Text").value;
  const firstName = document.querySelector("#firstname").value;
  const lastName = document.querySelector("#lastname").value;
  const confirmedPassword = document.querySelector("#confirm").value;
  const user = {
    id: uuid(),
    email,
    password,
    firstName,
    lastName,
    name: firstName + " " + lastName,
  };
  users.push(user);
  const userstr = JSON.stringify(users);
  localStorage.setItem("users", userstr);
  messageEl.textContent = "SignedUp Sucessfully back to";
  aEL.href = "/pages/signIn/";
  messageEl.appendChild(aEL);
}
// Reset page:

function resetPage() {
  document.getElementById("email-Text").value = "";
  document.querySelector("#password-Text").value = "";
  document.querySelector("#firstname").value = "";
  document.querySelector("#lastname").value = "";
  document.querySelector("#confirm").value = "";
}
