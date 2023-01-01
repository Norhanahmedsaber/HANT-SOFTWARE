const table = document.querySelector(".div-table");
let friends=[{
    // name:"Ahmed",
    // img:"585e4bf3cb11b227491c339a.png"
},{
    //  name:"lol",
    // img:"585e4bf3cb11b227491c339a.png"
}];
friends.forEach( friend =>{
    const html =`<div >   
    <img class="image-1" src=${friend.img} alt="personal image" title="friend name">
    <p class="name">${friend.name} </p>
    <button id="edit-btn" title="Show profile">
        <img src="images/headhunting.png" alt="" />
    </button>
    <button id="edit-btn" title="Delete frieng">
         <img src="images/remove-user.png" alt="" />
    </button>
    <hr>
    </div>`;
    table.innerHTML += html;
});







