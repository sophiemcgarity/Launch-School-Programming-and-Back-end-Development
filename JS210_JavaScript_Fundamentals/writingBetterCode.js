// Section 3 JavaScript Style Guide
// 1.
// let title = "The Three-Body Problem";
// Should use single quotes for strings, unless the string contains single quotes
// let title = 'The Three-Body Problem';

// 2. 
// let title = 'The Three-Body Problem',
//     author = 'Cixin Liu',
//     page_count = 400;
// shouldn't declare and initialize variables in one statement.
// let title = 'The Three-Body Problem';
// let author = 'Cixin Liu';
// let pageCount = 400;
// should use one let declaration per variable. 
// Variable names should use camelCase


// 3. 
// let completed = lastPageRead == 400;
// use strict evaluiation === not ==
// let completed = lastPageRead === 400;

// 4. 
// if (finishedBook())
//   console.log('You have finished reading this book');
// use braces around multiline statements
// can ommit for single line
// if (finishedBook()) console.log('You have finished reading this book.')
// if (finishedBook()){
//   console.log('You have finished reading this book'); 
// }

// 5.
function read(pages) {
  console.log('You started reading.');
  for (let page = 0; page < pages; page += 1) { 
    let message = 'You read page ' + String(page);
    console.log(message);
  }
}

read(400);
// spaces between variablle name, assignment and value
// space between value + for concatenation
// 2 space tab indent for each scope level
// convert integer value page to string to concatenate, use explicit string coercion
// page and pages similar name, could change to currentPage and totalPages
// style guide recommends using named function expressions instead of function declarations

let read = function read(pages) {
  // code
};

read(400);