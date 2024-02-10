"use strict"

let pre = document.querySelector('.hero>pre');
let parent = pre.parentElement;
let parentClasses = parent.className;

function adjustHero(){
    if (window.innerWidth<1200){
        parent.innerHTML = pre.innerHTML;
        parent.className=parentClasses;
    }
    else {
        parent.innerHTML = "";
        parent.appendChild(pre);
        parent.className=parentClasses;
    }
}

adjustHero();

window.addEventListener('resize', adjustHero);