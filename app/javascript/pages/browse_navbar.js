const initNavbarBrowse = () => {
  const navOne = document.querySelector(".nav-one");
  const navTwo = document.querySelector(".nav-two");
  const navThree = document.querySelector(".nav-three");
  const navFour = document.querySelector(".nav-four");
  const navBars = document.querySelectorAll(".nav-col");
  const searchResults = document.querySelector(".wrapper-index");
  const tableCarousel = document.querySelector(".table-carousel");

  const navInit = () => {
    navBars.forEach((bar) => {
      if (searchResults) {
        const distance = searchResults.offsetHeight;
        bar.style.height = distance - 50 + "px";
      }
    });
  };

  const navLibrary = () => {
    const distance = tableCarousel.offsetTop + tableCarousel.offsetHeight;
    navBars.forEach((bar) => {
      console.log(distance);
      bar.style.height = "1900px";
    });
  };

  if (
    window.location.pathname.indexOf("/books") > -1 ||
    window.location.pathname.indexOf("/search") > -1
  ) {
    navOne.style.marginRight = "auto";
    window.addEventListener("load", navInit());
  }

  if (window.location.pathname.indexOf("/users/") > -1) {
    navOne.style.marginRight = "inherit";
    navTwo.style.marginRight = "auto";
    window.addEventListener("load", navLibrary());
  }

  if (
    window.location.pathname === "/friendships/requests" ||
    window.location.pathname === "/users" ||
    window.location.pathname.indexOf("/friendships") > -1
  ) {
    navOne.style.marginRight = "inherit";
    navTwo.style.marginRight = "inherit";
    navThree.style.marginRight = "auto";
    window.addEventListener("load", navInit());
  }

  if (
    window.location.pathname === "/activities" ||
    window.location.pathname.indexOf("/chatrooms") > -1
  ) {
    navOne.style.marginRight = "inherit";
    navTwo.style.marginRight = "inherit";
    navThree.style.marginRight = "inherit";
    navFour.style.marginRight = "auto";
    window.addEventListener("load", navInit());
  }
};

export { initNavbarBrowse };
