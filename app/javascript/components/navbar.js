const initNavbar = () => {
  if (window.location.pathname === "/search") {
    const navBars = document.querySelectorAll(".nav-col");
    const searchResults = document.querySelector(".search-results");
    const btmBorder = document.querySelector(".btm-border");

    const distance = searchResults.offsetHeight;
    const distanceTwo = searchResults.getBoundingClientRect().top;
    navBars.forEach((bar) => {
      bar.style.height = distance + 31 + "px";
      btmBorder.style.top = distanceTwo + distance + "px";
      btmBorder.style.width = window.innerWidth + "px";
    });

    var navLinks = gsap.utils.toArray(".nav-link-book");

    // navLinks.forEach((link) => {
    //   gsap.to(link, {
    //     scrollTrigger: {
    //       trigger: link, // start the animation when ".box" enters the viewport (once)
    //       pin: true,
    //       start: "top top+=25px",
    //       end: distance - window.innerHeight + 220,
    //       scrub: true,
    //     },
    //   });
    // });
  }
};

export { initNavbar };
