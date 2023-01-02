let users = [];
const userslls = JSON.parse(localStorage.getItem("users"));
const messageEl = document.getElementById("message");
let aEL = document.createElement("a");
const aM = document.createTextNode("login");
aEL.appendChild(aM);
if (userslls) {
  users = userslls;
}
document.querySelector("#signup").addEventListener("click", (e) => {
  e.preventDefault();
  signup();
});
function signup() {
  const email = document.querySelector("#email-Text").value;
  const password = document.querySelector("#password-Text").value;
  const firstName = document.querySelector("#firstname").value;
  const lastName = document.querySelector("#lastname").value;
  const confirmedPassword = document.querySelector("#confirm").value;

  if (
    checkValidations(email, firstName, lastName, password, confirmedPassword)
  ) {
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
    resetPage();
    window.location.href = "/pages/signIn";
  }
}
// Reset page:

function resetPage() {
  document.getElementById("email-Text").value = "";
  document.querySelector("#password-Text").value = "";
  document.querySelector("#firstname").value = "";
  document.querySelector("#lastname").value = "";
  document.querySelector("#confirm").value = "";
}

function containsOnlyLetters(str) {
  return /^[a-zA-Z]+$/.test(str);
}

function isEmail(emailAdress) {
  let regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

  if (emailAdress.match(regex)) return true;
  else return false;
}

function checkValidations(
  email,
  firstName,
  lastName,
  password,
  confirmedPassword
) {
  if (!containsOnlyLetters(firstName)) {
    return false;
  } else if (firstName.length <= 0) {
    //error msg
    return false;
  } else if (!containsOnlyLetters(lastName)) {
    //error msg
    return false;
  } else if (lastName.length <= 0) {
    //error msg
    return false;
  } else if (!isEmail(email)) {
    // error msg
    return false;
  } else if (email.length <= 0) {
    // error msg
    return false;
  } else if (password !== confirmedPassword) {
    //error msg
    return false;
  } else if (password.length <= 0) {
    //error msg
    return false;
  } else return true;
}
