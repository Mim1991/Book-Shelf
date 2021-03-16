const initGlider = () => {
  // window.addEventListener("load", function () {
  console.log("loaded");
  new Glider(document.querySelector(".glider"), {
    draggable: true,
  });
  new Glider(document.querySelector(".glider-two"), {
    draggable: true,
  });
  new Glider(document.querySelector(".glider-three"), {
    draggable: true,
  });
  new Glider(document.querySelector(".glider-four"), {
    draggable: true,
  });
  // });
};

export { initGlider };
