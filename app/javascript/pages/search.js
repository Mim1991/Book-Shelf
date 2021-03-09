const initNavbarSearch = () => {
  if (window.location.pathname === "/search") {
    const navOne = document.querySelector(".nav-one");
    const containerSearch = document.querySelector(".container-search");
    const seperatorContainer = document.querySelector(".seperator-container");

    navOne.style.marginRight = "auto";
    containerSearch.style.opacity = 1;
    seperatorContainer.style.opacity = 1;
  }
};

export { initNavbarSearch };
