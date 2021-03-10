const initNavbarBrowse = () => {
  if (window.location.pathname === "/books") {
    var tl = gsap.timeline();
    tl.to(".nav-one", {
      marginRight: "auto",
      duration: 0.7,
    })
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

export { initNavbarBrowse };
