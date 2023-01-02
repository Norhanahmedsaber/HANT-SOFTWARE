const uploadedEl = document.querySelector(".list ul");

let uploaded = [];
render();
document.querySelector("#post").addEventListener("click", () => {
  createPost();
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
document.querySelector("#upload-btn").addEventListener("click", () => {
  document.querySelector(".new-post").click();
});
document.querySelector(".new-post").addEventListener("input", (e) => {
  uploaded.push(e.target.value.substring(12));
  renderUploaded();
});
document.querySelector(".input2").addEventListener("input", () => {
  checkForButtons();
});

