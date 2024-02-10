"use strict";

let addTeamButtons = document.getElementsByClassName("addPlayerButton");
for (let button of addTeamButtons){
    button.addEventListener("click", () =>{
        document.getElementById("addPlayer").classList.remove("d-none");
    })
}