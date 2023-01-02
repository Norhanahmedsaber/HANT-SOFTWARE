const firstName = document.getElementById("firstname");
const lastname = document.getElementById("lastname");
const bio = document.getElementById("bio");
const user = JSON.parse(localStorage.getItem("loggedInUser"));
let currentImagePath = user.img;
function render() {
  if (user.img) {
    document.getElementById("pp").setAttribute("src", user.img);
  }
  if (user.bio) {
    bio.value = user.bio;
  }
  firstName.value = user.firstName;
  lastname.value = user.lastName;
}
document.getElementById("upload-photo").addEventListener("click", () => {
  document.getElementById("upload").click();
});
document.getElementById("upload").addEventListener("input", (e) => {
  currentImagePath =
    "/pages/profile/profilePictures/" + e.target.value.substring(12);
  document.getElementById("pp").setAttribute("src", currentImagePath);
});
document.querySelector("#save").addEventListener("click", () => {
  const bean = {
    firstName: document.querySelector("#firstname").value,
    lastname: document.querySelector("#lastname").value,
    bio: document.querySelector("#bio").value,
  };
  const userLS = JSON.parse(localStorage.getItem("loggedInUser"));
  userLS.firstName = bean.firstName;
  userLS.lastName = bean.lastname;
  userLS.bio = bean.bio;
  userLS.img = currentImagePath;
  userLS.name = bean.firstName + " " + bean.lastname;
  localStorage.setItem("loggedInUser", JSON.stringify(userLS));
  const users = JSON.parse(localStorage.getItem("users"));
  users.forEach((user) => {
    if (user.id === userLS.id) {
      user.firstName = bean.firstName;
      user.lastName = bean.lastname;
      user.bio = bean.bio;
      user.img = currentImagePath;
      user.name = bean.firstName + " " + bean.lastname;
    }
  });
  localStorage.setItem("users", JSON.stringify(users));
  window.location.href = "/pages/profile";
});

document.querySelector("#cancel").addEventListener("click", () => {
  window.location.href = "/pages/profile";
});
render();
