const initGlider = () => {
  const gliderOne = document.querySelector(".glider");
  const gliderTwo = document.querySelector(".glider-two");
  const gliderThree = document.querySelector(".glider-three");
  const gliderFour = document.querySelector(".glider-four");

  new Glider(gliderOne, {
    draggable: true,
  });
  new Glider(gliderTwo, {
    draggable: true,
  });
  new Glider(gliderThree, {
    draggable: true,
  });
  new Glider(gliderFour, {
    draggable: true,
  });
};

export { initGlider };
