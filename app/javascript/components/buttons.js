const initButtons = () => {
  const btnAdd = document.querySelectorAll(".btn-add");
  const btnAddFriend = document.querySelectorAll(".btn-add-friend");

  const buttonSelected = (element, color, text) => {
    element.style.backgroundColor = color;
    element.innerText = text;
    element.style.cursor = "default ";
  };

  btnAdd.forEach((btn) =>
    btn.addEventListener("click", function () {
      buttonSelected(this, "#808080", "Added!");
    })
  );
  btnAddFriend.forEach((btn) =>
    btn.addEventListener("click", function () {
      buttonSelected(this, "#808080", "Request Sent!");
    })
  );
};

export { initButtons };
