const initGlider = () => {
  const gliderOne = document.querySelector(".glider");
  const gliderTwo = document.querySelector(".glider-two");
  const gliderThree = document.querySelector(".glider-three");
  const gliderFour = document.querySelector(".glider-four");

  const newGlider = (glider) => {
    if (glider) {
      new Glider(glider, {
        draggable: true,
      });
    }
  };

  newGlider(gliderOne);
  newGlider(gliderTwo);
  newGlider(gliderThree);
  newGlider(gliderFour);
};

export { initGlider };
