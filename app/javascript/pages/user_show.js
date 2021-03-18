const initUserShow = () => {
  const deleteBook = document.querySelectorAll(".delete-book");
  const moveTopBook = document.querySelectorAll(".top-book-btn");
  const moveMiddleBook = document.querySelectorAll(".middle-book-btn");
  const moveBottomBook = document.querySelectorAll(".bottom-book-btn");
  const moveTableBook = document.querySelectorAll(".table-book-btn");
  const gliderOne = document.querySelector(".glider-select-one").children[0]
    .children[0];
  const gliderTwo = document.querySelector(".glider-select-two").children[0]
    .children[0];
  const gliderThree = document.querySelector(".glider-select-three").children[0]
    .children[0];
  const gliderFour = document.querySelector(".glider-select-four").children[0]
    .children[0];

  const deleteBookFromShelf = (event) => {
    const bookSelector = event.currentTarget.parentElement.parentElement;
    bookSelector.style.display = "none";
  };

  const moveToTopShelf = (event) => {
    const bookSelector = event.currentTarget.parentElement.parentElement;
    gliderOne.prepend(bookSelector);
  };
  const moveToMiddleShelf = (event) => {
    const bookSelector = event.currentTarget.parentElement.parentElement;
    gliderTwo.prepend(bookSelector);
  };
  const moveToBottomShelf = (event) => {
    const bookSelector = event.currentTarget.parentElement.parentElement;
    gliderThree.prepend(bookSelector);
  };
  const moveToTableShelf = (event) => {
    const bookSelector = event.currentTarget.parentElement.parentElement;
    gliderFour.prepend(bookSelector);
  };

  deleteBook.forEach((book) =>
    book.addEventListener("click", deleteBookFromShelf)
  );

  moveTopBook.forEach((book) => book.addEventListener("click", moveToTopShelf));
  moveMiddleBook.forEach((book) =>
    book.addEventListener("click", moveToMiddleShelf)
  );
  moveBottomBook.forEach((book) =>
    book.addEventListener("click", moveToBottomShelf)
  );
  moveTableBook.forEach((book) =>
    book.addEventListener("click", moveToTableShelf)
  );
};

export { initUserShow };
