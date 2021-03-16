const initNavbarBrowse = () => {
  const navOne = document.querySelector(".nav-one");
  const navTwo = document.querySelector(".nav-two");
  const navThree = document.querySelector(".nav-three");
  const navFour = document.querySelector(".nav-four");
  const navBars = document.querySelectorAll(".nav-col");
  const searchResults = document.querySelector(".wrapper-index");

  navBars.forEach((bar) => {
    if (searchResults) {
      const distance = searchResults.offsetHeight;
      bar.style.height = distance - 50 + "px";
    }
  });

  if (
    window.location.pathname.indexOf("/books") > -1 ||
    window.location.pathname.indexOf("/search") > -1
  ) {
    navOne.style.marginRight = "auto";
  }
  if (window.location.pathname.indexOf("/users/") > -1) {
    navOne.style.marginRight = "inherit";
    navTwo.style.marginRight = "auto";
  }
  if (
    window.location.pathname === "/friendships/requests" ||
    window.location.pathname === "/users" ||
    window.location.pathname.indexOf("/friendships") > -1
  ) {
    navOne.style.marginRight = "inherit";
    navTwo.style.marginRight = "inherit";
    navThree.style.marginRight = "auto";
  }
  if (window.location.pathname === "/activities") {
    navOne.style.marginRight = "inherit";
    navTwo.style.marginRight = "inherit";
    navThree.style.marginRight = "inherit";
    navFour.style.marginRight = "auto";
  }
};

export { initNavbarBrowse };
