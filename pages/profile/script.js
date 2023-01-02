render();
const uploadedEl = document.querySelector(".list ul");
let uploaded = [];

document.querySelector("#post").addEventListener("click", () => {
  createPost();
  // document.getElementById("create-text").style.display = "none";
});
document.querySelector("#text-btn").addEventListener("click", () => {
  if (document.querySelector(".input2").style.display === "none") {
    document.querySelector(".input2").style.display = "block";
  } else {
    const textEl = document.querySelector(".input2");
    if (textEl.value.length === 0) {
      textEl.style.display = "none";
    }
  }
});
document.getElementById("edit-btn").addEventListener("click", () => {
  window.location.href = "/pages/profile/edit.html";
});
document.querySelector("#upload-btn").addEventListener("click", () => {
  document.querySelector(".new-post").click();
});
document.querySelector(".new-post").addEventListener("input", (e) => {
  uploaded.push(e.target.value.substring(12));
  renderUploaded();
});
document.querySelector(".input2").addEventListener("input", () => {});
