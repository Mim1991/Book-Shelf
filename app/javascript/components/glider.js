const initGlider = () => {
  const gliderOne = document.querySelector(".glider");
  const gliderTwo = document.querySelector(".glider-two");
  const gliderThree = document.querySelector(".glider-three");
  const gliderFour = document.querySelector(".glider-four");

  if (gliderOne) {
    new Glider(gliderOne, {
      draggable: true,
    });
  }

  if (gliderTwo) {
    new Glider(gliderTwo, {
      draggable: true,
    });
  }

  if (gliderThree) {
    new Glider(gliderThree, {
      draggable: true,
    });
  }

  if (gliderFour) {
    new Glider(gliderFour, {
      draggable: true,
    });
  }
};

export { initGlider };
