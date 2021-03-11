const initNavbarBookShow = () => {
  if (window.location.pathname.indexOf("/books/") > -1) {
    const navOne = document.querySelector(".nav-one");
    const containerSearch = document.querySelector(".container-search");
    const seperatorContainer = document.querySelector(".seperator-container");

    navOne.style.marginRight = "auto";
    containerSearch.style.opacity = 1;
    seperatorContainer.style.opacity = 1;
  }
};

export { initNavbarBookShow };
