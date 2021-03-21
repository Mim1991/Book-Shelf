const initNavbarBrowse = () => {
  const navBars = document.querySelectorAll(".nav-col");
  const searchResults = document.querySelector(".wrapper-index");

  // Setting lengths of nav columns
  const navbarSizing = () => {
    navBars.forEach((bar) => {
      if (searchResults) {
        const distance = searchResults.offsetHeight;
        bar.style.height = distance - 50 + "px";
      }
    });
  };

  // User library loading vertically as accessing API, skewing the height. Creating a custom length for the page
  const navbarSizingLibrary = () => {
    navBars.forEach((bar) => {
      bar.style.height = "1900px";
    });
  };

  // Number is how many navbar columns on the left. Sets position then height
  const navbarSpacing = (page, number, navfunction = navbarSizing) => {
    if (window.location.pathname.indexOf(page) > -1) {
      for (let i = 0; i < number - 1; i++) {
        navBars[i].style.marginRight = "inherit";
      }
      navBars[number - 1].style.marginRight = "auto";
      navfunction();
    }
  };

  navbarSpacing("/books", 1);
  navbarSpacing("/search", 1);
  navbarSpacing("/users/", 2, navbarSizingLibrary);
  navbarSpacing("/friendships", 3);
  navbarSpacing("/browse_users", 3);
  navbarSpacing("/activities", 4);
  navbarSpacing("/chatrooms", 4);
};

export { initNavbarBrowse };
