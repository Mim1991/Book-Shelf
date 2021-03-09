const initNavbarBrowse = () => {
  if (window.location.pathname === "/books") {
    const navbar = document.querySelector(".home-navbar");

    var tl = gsap.timeline();
    tl.to(".nav-one", {
      marginRight: "auto",
      duration: 0.7,
    })
      .to(
        ".container-search",
        {
          opacity: 1,
          duration: 0.5,
        },
        "-=0.4"
      )
      .to(
        ".seperator-container",
        {
          opacity: 1,
          duration: 0.5,
        },
        "-=0.5"
      );
  }
};

export { initNavbarBrowse };
