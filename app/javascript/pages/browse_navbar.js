const initNavbarBrowse = () => {
  const navOne = document.querySelector(".nav-one");
  const navTwo = document.querySelector(".nav-two");
  const navThree = document.querySelector(".nav-three");
  const navBars = document.querySelectorAll(".nav-col");
  const searchResults = document.querySelector(".search-results");

  navBars.forEach((bar) => {
    if (searchResults) {
      const distance = searchResults.offsetHeight;
      bar.style.height = distance + 60 + "px";
    }
  });

  if (
    window.location.pathname.indexOf("/books") > -1 ||
    window.location.pathname.indexOf("/search") > -1
  ) {
    navOne.style.marginRight = "auto";
  }
  if (
    window.location.pathname === "/friendships/requests" ||
    window.location.pathname === "/users" ||
    window.location.pathname.indexOf("/friendships") > -1
  ) {
    navOne.style.marginRight = 0;
    navTwo.style.marginRight = 0;
    navThree.style.marginRight = window.innerWidth - 250 + "px";
  }
};

export { initNavbarBrowse };
