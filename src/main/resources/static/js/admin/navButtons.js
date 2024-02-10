"use strict";

let addTeamButtons = document.getElementsByClassName("addTeamButton");
for (let button of addTeamButtons){
    button.addEventListener("click", () =>{
        document.getElementById("editTeam").classList.add("d-none");
        document.getElementById("addTeam").classList.remove("d-none");
    })
}

let editTeamButtons = document.getElementsByClassName("editTeamButton");
for (let button of editTeamButtons){
    button.addEventListener("click", () =>{
        document.getElementById("addTeam").classList.add("d-none");
        document.getElementById("editTeam").classList.remove("d-none");
    })
}