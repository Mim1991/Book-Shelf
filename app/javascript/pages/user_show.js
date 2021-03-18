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

  const moveToShelf = (event, shelf) => {
    const bookSelector = event.parentElement.parentElement;
    console.dir(event);
    shelf.prepend(bookSelector);
  };

  deleteBook.forEach((book) =>
    book.addEventListener("click", deleteBookFromShelf)
  );

  moveTopBook.forEach((book) =>
    book.addEventListener("click", function () {
      moveToShelf(this, gliderOne);
    })
  );
  moveMiddleBook.forEach((book) =>
    book.addEventListener("click", function () {
      moveToShelf(this, gliderTwo);
    })
  );
  moveBottomBook.forEach((book) =>
    book.addEventListener("click", function () {
      moveToShelf(this, gliderThree);
    })
  );
  moveTableBook.forEach((book) =>
    book.addEventListener("click", function () {
      moveToShelf(this, gliderFour);
    })
  );
};

export { initUserShow };
