const initNavbarFriendships = () => {
  if (
    window.location.pathname === "/friendships/requests" ||
    window.location.pathname === "/users" ||
    window.location.pathname.indexOf("/friendships") > -1
  ) {
    var tl = gsap.timeline();
    tl.to(".nav-one", {
      marginRight: 0,
      duration: 0.7,
    })
      .to(
        ".nav-two",
        {
          marginRight: 0,
          duration: 1,
        },
        "-=0.7"
      )
      .to(
        ".nav-three",
        {
          marginRight: window.innerWidth - 250,
          duration: 1,
        },
        "-=0.7"
      )
      .to(
        ".container-search",
        {
          opacity: 1,
          duration: 1,
        },
        "-=0.4"
      )
      .to(
        ".seperator-container",
        {
          opacity: 1,
          duration: 1,
        },
        "-=1"
      )
      .to(
        ".book-list",
        {
          opacity: 1,
          duration: 1,
        },
        "-=1"
      );
  }
};

export { initNavbarFriendships };
