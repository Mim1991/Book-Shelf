const initButtons = () => {
  const btnAdd = document.querySelectorAll(".btn-add");
  const btnSendRequest = document.querySelectorAll(".btn-send");

  const buttonSelected = (element, color, text) => {
    element.style.backgroundColor = color;
    element.innerText = text;
    element.style.cursor = "default ";
  };

  // Adding books to libraries
  btnAdd.forEach((btn) =>
    btn.addEventListener("click", function () {
      buttonSelected(this, "#808080", "Added!");
    })
  );

  // Sending Friend Requests
  btnSendRequest.forEach((btn) =>
    btn.addEventListener("click", function () {
      buttonSelected(this, "#808080", "Request Sent!");
    })
  );
};

export { initButtons };
