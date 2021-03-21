const initGlider = () => {
  const gliderAll = document.querySelectorAll(".glider-select");

  const newGlider = (glider) => {
    if (glider) {
      new Glider(glider, {
        draggable: true,
      });
    }
  };

  gliderAll.forEach((glider) => {
    newGlider(glider);
  });
};

export { initGlider };
