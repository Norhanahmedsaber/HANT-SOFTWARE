const firstName = document.getElementById("firstname");
const lastname = document.getElementById("lastname");
const bio = document.getElementById("bio");
function render() {
    const user = JSON.parse(localStorage.getItem("loggedInUser"));
    if(user.img) {
        document.getElementById("pp").setAttribute("src", user.img);
    }
    if(user.bio) {
        bio.value = user.bio;
    }
    firstName.value = user.firstName;
    lastname.value = user.lastName;
}
document.getElementById("upload-photo").addEventListener("click", ()=>{
    document.getElementById("upload").click();
})
document.getElementById("upload").addEventListener("input", (e)=> {
    const userLS = JSON.parse(localStorage.getItem("loggedInUser"));
    userLS.img = "/pages/profile/profilePictures/" + e.target.value.substring(12);
    localStorage.setItem("loggedInUser", JSON.stringify(userLS));
    const users = JSON.parse(localStorage.getItem("users"))
    users.forEach((user)=>{
        if(user.email === userLS.email)
        {
            user.img="/pages/profile/profilePictures/" + e.target.value.substring(12);
        }
    })
    localStorage.setItem("users", JSON.stringify(users))
    render();
})
document.querySelector("#save").addEventListener("click",()=>{
    const bean = {
        firstName:document.querySelector("#firstname").value,
        lastname:document.querySelector("#lastname").value,
        bio:document.querySelector('#bio').value
    }
    const userLS = JSON.parse(localStorage.getItem("loggedInUser"))
    userLS.firstName=bean.firstName
    userLS.lastName=bean.lastname
    userLS.bio=bean.bio
    localStorage.setItem("loggedInUser", JSON.stringify(userLS))
    const users = JSON.parse(localStorage.getItem("users"))
    users.forEach((user)=>{
        if(user.email === userLS.email)
        {
            user.firstName=bean.firstName
            user.lastName=bean.lastname
            user.bio=bean.bio
        }
    })
    localStorage.setItem("users", JSON.stringify(users))
})
render();