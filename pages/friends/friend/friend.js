const postsEl = document.querySelector(".posts");
const url = new URL(window.location.href);
const id = url.searchParams.get("id");
function render() {
  renderInfo();
  renderPosts(id);
}
render();
