// 1. Last Array Element
// let lastInArray = array => array[array.length - 1];
// console.log(lastInArray([1, 2, 3]));

// 2. Output each name in an array
// function rollCall(names) {
//   for (let index = 0; index < names.length; index += 1) {
//     console.log(names[index]);
//   }
// }

// rollCall(['Louis', 'Oreo', 'Apollo']);

// 3. Reverse an array
// function reverseArray(items) {
//   let reversedItems = [];

//   for (let index = items.length - 1; index >= 0; index -= 1) {
//     reversedItems.push(items[index]);
//   }

//   return reversedItems;
// }

// console.log(reverseArray(['Louis', 'Oreo', 'Apollo']));

// 4. Convert to string
// function toString(array) {
//   let str = '';

//   for (let i = 0; i < array.length; i += 1) {
//     str += String(array[i]);
//   }

//   return str;
// }

// console.log(toString(['Louis', 'Oreo', 'Apollo']));

// Section 3. Array Operations: push, pop, shift, and unshift
// 1. Push function
// function push(array, item) {
//   array[array.length] = item;
//   return array.length;
// }

// let count = [0, 1, 2];
// console.log(push(count, 3));

// 2. Pop Function
// function pop(array) {
//   if (array.length === 0) {
//     return undefined;
//   }

//   let removedItem = array[array.length - 1];
//   array.length = array.length - 1;
//   return removedItem;
// }

// let count = [1, 2, 3];
// console.log(pop(count));
// console.log(count);

// 3. unshift function
// function unshift(array, value) {
//   for (let index = array.length; index > 0; index -= 1) {
//     array[index] = array[index - 1];
//   }

//   array[0] = value;
//   return array.length;
// }

// let count = [1, 2, 3];
// console.log(unshift(count, 0));      // 4
// console.log(count); 

// 4. shift function
// function shift(array) {
//   let first = array[0];

//   if (array.length === 0) {
//     return undefined;
//   }

//   for (let index = 0; index < array.length - 1; index += 1) {
//     array[index] = array[index + 1];
//   }

//   array.length = array.length - 1;
//   return first
// }

// let count = [1, 2, 3];
// console.log(shift(count));
// console.log(count);

// Section 4. Array Operations: indexOf and lastIndexOf
// 1. indexOf
// function indexOf(array, item) {
//   for (let index = 0; index < array.length; index += 1) {
//     if (array[index] === item) {
//       return index;
//     }
//   }

//   return -1;
// }
// console.log(indexOf([1, 2, 3, 3], 3));         // 2
// console.log(indexOf([1, 2, 3], 4));            // -1

// 2. lastIndexOf
// function lastIndexOf(array, item) {
//   for (let index = array.length - 1; index >= 0; index -= 1) {
//     if (array[index] === item) {
//       return index;
//     }
//   }

//   return -1;
// }

// console.log(lastIndexOf([1, 2, 3, 3], 3));     // 3
// console.log(lastIndexOf([1, 2, 3], 4));        // -1

// Section 5. Array Operations: slice, splice, concat, and join
// 1. slice function
// function slice(array, start, end) {
//   let newArr = [];
//   let otherIndex = 0;
//   for (let index = start; index < end; index += 1) {
//     newArr[otherIndex] = array[index];
//     otherIndex += 1;
//   }

//   return newArr;
// }

// console.log(slice(['a', 'b', 'c', 'd', 'e', 'f', 'g'], 1, 3));

// 2. splice function
// function splice(array, start, length) {
//   let removedItems = [];
//   let otherIndex = 0;
//   for (let index = start; index < array.length; index += 1) {
//     if (index < start + length) {
//       removedItems[otherIndex] = array[index]
//     }
//     array[index] = array[index + length]
//     otherIndex += 1;
//   }

//   array.length = array.length - removedItems.length
//   return array;
// }

// let count = [1, 2, 3, 4, 5, 6, 7, 8];
// console.log(splice(count, 2, 5));                   // [ 3, 4, 5, 6, 7 ]
// console.log(count);                                 // [ 1, 2, 8 ]

// 3. concat function
// function concat(arr1, arr2) {
//   let concatArr = [];

//   for (let i = 0; i < arr1.length; i += 1) {
//     concatArr.push(arr1[i])
//   }

//   for (let i = 0; i < arr2.length; i += 1) {
//     concatArr.push(arr2[i])
//   }

//   return concatArr;
// }

// console.log(concat([1, 2, 3], [4, 5, 6]));      // [ 1, 2, 3, 4, 5, 6 ])

// 4. join
// join the seperator with each value in the array not including the end
// function join(array, seperator) {
//   let result = '';
//   for (let i = 0; i < array.length - 1; i += 1) {
//     result += String(array[i]) + seperator;
//   }

//   result += String(array[array.length - 1]);
//   return result;
// }

// console.log(join(['bri', 'tru', 'wha'], 'ck '));       // 'brick truck wha'
// console.log(join([1, 2, 3], ' and '));                 // '1 and 2 and 3'

// Section 8. Practice Problem: Comparing Arrays
// function arraysEqual(arr1, arr2) {
//   if (arr1.length != arr2.length) {
//     return false;
//   }

//   for (let i = 0; i < arr1; i += 1) {
//     if (arr1[i] != arr2[i]) {
//       return false;
//     }
//   }

//   return true;
// }

// console.log(arraysEqual([1, 2, 3], [1, 2]));

// Section 9. Practice Problems: Basic Array Uses
// 1. 
// function firstElementOf(arr) {
//   return arr[0]
// }

// firstElementOf(['U', 'S', 'A']);  // returns "U"

// 2.
// function lastElementOf(arr) {
//   return arr[arr.length - 1];
// }

// console.log(lastElementOf(['U', 'S', 'A']));  // returns "A"

// 3. 
// function nthElementOf(arr, index) {
//   return arr[index];
// }

// let digits = [4, 8, 15, 16, 23, 42];

// console.log(nthElementOf(digits, 3));   // returns 16
// console.log(nthElementOf(digits, 8));   // what does this return?
// console.log(nthElementOf(digits, -1));  // what does this return?

// 4.
// Can insert elements to negative indexes as all arrrays are objects in JavaScript.
// The added element becomes part of the 'array object' but is not properly one of the array elements. The array length property remains unchanged.

// 5.
// function firstNOf(arr, count) {
//   return arr.slice(0, count);
// }

// let digits = [4, 8, 15, 16, 23, 42];
// console.log(firstNOf(digits, 3));    // returns [4, 8, 15]

// 6. 
// function lastNOf(arr, count) {
//   return arr.slice(arr.length - count);
// }

// let digits = [4, 8, 15, 16, 23, 42];
// console.log(lastNOf(digits, 3));    // returns [16, 23, 42]

// 7. 
// What happens if you pass a count greater than the length of the array?
    // when a count greater than the array length is passed, the arithmetic in the function becomes a negative value.
    // slice interprets a negative value as a posiion relative to the end of the array.
    // if with pass a count larger than the array size it becomes a negative value.
    // and array with the size of 6, with a count passed of 9, becomes -3 so the last 3 elements are returned
    // digits.slice(digits.length - 9);
    // [16, 23, 42]
// How can you fix the function so it returns a new instance of the entire array when count is greater than the array length?
    // we can calculate the starting position, the adjust it to 0 if it is negative. we can pass the resulting value to slice, which returns a new copy of the array when the value is 0

// function lastNOf(arr, count) {
//   if (arr.length - count < 0) {
//     count = 0;
//   }
//   return arr.slice(count);
// }

// let digits = [4, 8, 15, 16, 23, 42];
// console.log(lastNOf(digits, 9));    // returns [16, 23, 42]

// 8. 
// function endsOf(beginningArr, endingArr) {
//   let newArr = [beginningArr[0], endingArr[endingArr.length - 1]];
//   return newArr;
// }

// console.log(endsOf([4, 8, 15], [16, 23, 42]));  // returns [4, 42]

// Section 10. Practice Problems: Intermediate Array Uses
// 1.
// function oddElementsOf(arr) {
//   let oddElements = [];
//   for (let i = 1; i < arr.length; i += 2) {
//     oddElements.push(arr[i]);
//   }
  
//   return oddElements;
// }

// let digits = [4, 8, 15, 16, 23, 42];

// console.log(oddElementsOf(digits));    // returns [8, 16, 42] 

// 2. 
// function addReverse(arr) {
//   return arr.concat(arr.slice().reverse());
// }

// console.log(addReverse([1, 2, 3, 4]));

// 3. 
// function sortDescending(arr) {
//   return arr.slice().sort((a, b) => b - a);
// }

// let array = [23, 4, 16, 42, 8, 15];
// let result = sortDescending(array);  // returns [42, 23, 16, 15, 8, 4]
// console.log(result);                 // logs    [42, 23, 16, 15, 8, 4]
// console.log(array);                  // logs    [23, 4, 16, 42, 8, 15]

// 4.
// function matrixSums(arr) {
//   let sums = [];

//   for (let i = 0; i < arr.length; i += 1) {
//     sums.push(arr[i].reduce((a, b) => a + b));
//   }

//   return sums;
// }

// console.log(matrixSums([[2, 8, 5], [12, 48, 0], [12]]));  // returns [15, 60, 12]

// 5.
// function uniqueElements(arr) {
//   let noDuplicates = [];
//   for (let i = 0; i < arr.length; i += 1) {
//     if (noDuplicates.includes(arr[i])) {
//       continue;
//     } else {
//       noDuplicates.push(arr[i]);
//     }
//   }
//   return noDuplicates;
// }

// console.log(uniqueElements([1, 2, 4, 3, 4, 1, 5, 4]));  // returns [1, 2, 4, 3, 5]

// Section 11. Practice Problems: Find Missing Numbers
// function missing(arr) {
//   if (arr.length <= 1) {
//     return [];
//   }

//   let min = arr.sort((a, b) => a - b)[0];
//   let max = arr.sort((a, b) => b - a)[0];
//   let missingValues = [];
  
//   for (let i = min; i < max; i += 1) {
//     if (!arr.includes(i)) {
//       missingValues.push(i);
//     }
//   }

//   return missingValues;
// }

// console.log(missing([-3, -2, 1, 5]));
// console.log(missing([1, 2, 3, 4]));
// console.log(missing([1, 5]));
// console.log(missing([6]));

