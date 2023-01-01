let users = [];
const userslls = JSON.parse(localStorage.getItem("users"));
if (userslls) {
  users = userslls;
}
document.querySelector("#signup").addEventListener("click", () => {
  signup();
});
function signup() {
  const email = document.querySelector("#email-Text").value;
  const password = document.querySelector("#password-Text").value;
  const firstName = document.querySelector("#firstname").value;
  const lastName = document.querySelector("#lastname").value;
  const confirmedPassword = document.querySelector("#confirm").value;
  const user = {
    email,
    password,
    firstName,
    lastName,
    name: firstName + " " + lastName,
    id: uuid(),
  };
  users.push(user);
  const userstr = JSON.stringify(users);
  localStorage.setItem("users", userstr);
}
