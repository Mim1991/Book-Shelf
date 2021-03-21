const initUserShow = () => {
  const deleteBook = document.querySelectorAll(".delete-book");
  const moveTopBook = document.querySelectorAll(".top-book-btn");
  const moveMiddleBook = document.querySelectorAll(".middle-book-btn");
  const moveBottomBook = document.querySelectorAll(".bottom-book-btn");
  const moveTableBook = document.querySelectorAll(".table-book-btn");
  const gliderOne = document.querySelector(".glider-select-one");
  const gliderTwo = document.querySelector(".glider-select-two");
  const gliderThree = document.querySelector(".glider-select-three");
  const gliderFour = document.querySelector(".glider-select-four");

  // Functions to delete books, find the shelf to append the book to,
  const deleteBookFromShelf = (event) => {
    const bookSelector = event.currentTarget.parentElement.parentElement;
    bookSelector.style.display = "none";
  };

  const findAppendPosition = (glider) => {
    if (glider) {
      return glider.children[0].children[0];
    }
  };

  const moveToShelf = (event, shelf) => {
    const bookSelector = event.parentElement.parentElement;
    shelf.prepend(bookSelector);
  };

  const moveBookFunction = (bookSelected, glider) => {
    bookSelected.forEach((book) =>
      book.addEventListener("click", function () {
        moveToShelf(this, findAppendPosition(glider));
      })
    );
  };

  // Button Actions for Delete and Move Shelf
  deleteBook.forEach((book) =>
    book.addEventListener("click", deleteBookFromShelf)
  );

  // Calling functions for 4 shelves
  moveBookFunction(moveTopBook, gliderOne);
  moveBookFunction(moveMiddleBook, gliderTwo);
  moveBookFunction(moveBottomBook, gliderThree);
  moveBookFunction(moveTableBook, gliderFour);
};

export { initUserShow };
