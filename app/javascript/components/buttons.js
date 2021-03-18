const initButtons = () => {
  const btnAdd = document.querySelectorAll(".btn-add");

  const buttonSelected = (element, color, text) => {
    element.style.backgroundColor = color;
    element.innerText = text;
  };

  btnAdd.forEach((btn) =>
    btn.addEventListener("click", function () {
      buttonSelected(this, "#808080", "Added!");
    })
  );
};

export { initButtons };
