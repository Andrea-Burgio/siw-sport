//This script is used to show the login modal when the URI is /?showLogin=true
"use strict"

const urlParams = new URLSearchParams(window.location.search);
const showLoginModalError = urlParams.get("loginError");
if (showLoginModalError === "true") {
    let loginModal = new bootstrap.Modal(document.getElementById("modal"));
    let loginError = document.getElementById("loginError");
    loginError.classList.remove("d-none");
    loginModal.show();
}