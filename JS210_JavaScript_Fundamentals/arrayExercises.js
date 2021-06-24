// 1. Array Copy Part 1
// let myArray = [1, 2, 3, 4];    // [1, 2, 3, 4]
// const myOtherArray = myArray;  // [1, 2, 3, 4]

// myArray.pop();                 // 4
// console.log(myArray);          // myArray = [1, 2, 3]
// console.log(myOtherArray);     // myOtherArray = [1, 2, 3]

// myArray = [1, 2];              // [1, 2]
// console.log(myArray);          // myArray = [1, 2]
// console.log(myOtherArray);     // myOtherArray = [1, 2, 3]

// 2. Array Copy Part 2
// let myArray = [1, 2, 3, 4];
// const myOtherArray = []

// for (let i = 0; i < myArray.length; i += 1) {
//   myOtherArray.push(myArray[i]);
// }

// myArray.pop();
// console.log(myOtherArray);

// myArray = [1, 2];
// console.log(myOtherArray);

// let myArray = [1, 2, 3, 4];
// const myOtherArray = myArray.slice();

// myArray.pop();
// console.log(myOtherArray);

// myArray = [1, 2];
// console.log(myOtherArray);

// 3. Array Concat Part 1
// function concat(array1, secondArgument) {
//   let results = array1.slice();

//   if (Array.isArray(secondArgument)) {
//     for (let i = 0; i < secondArgument.length; i += 1) {
//       results[results.length] = secondArgument[i];
//     }
//   } else {
//     results[results.length] = secondArgument;
//   }
//   return results;
// }

// concat([1, 2, 3], [4, 5, 6]);          // [1, 2, 3, 4, 5, 6]
// concat([1, 2], 3);                     // [1, 2, 3]
// concat([2, 3], ['two', 'three']);      // [2, 3, "two", "three"]
// concat([2, 3], 'four');                // [2, 3, "four"]

// 4. Array Concat Part 2
// function concat(...secondArguments) {
//   let results = [];

//   for (let i = 0; i < secondArguments.length; i += 1) {
//     if (Array.isArray(secondArguments[i])) {
//       for (let j = 0; j < secondArguments[i].length; j += 1) {
//         results[results.length] = secondArguments[i][j];
//       }
//     } else {
//       results[results.length] = secondArguments[i];
//     }
    
//   }

//   return results;
// }

// console.log(concat([1, 2, 3], [4, 5, 6], [7, 8, 9]));
// console.log(concat([1, 2], 'a', ['one', 'two']));
// console.log(concat([1, 2], ['three'], 4));

// 5. Array Pop and Push
// pop
// function pop(array) {
//   if (array.length <= 0) {
//     return undefined;
//   }

//   let lastItem = array[array.length - 1];
//   array.length = array.length - 1;
//   return lastItem;
// }

// const array1 = [1, 2, 3];
// console.log(pop(array1));                        // 3
// console.log(array1);                // [1, 2]
// console.log(pop([]));                           // undefined
// console.log(pop([1, 2, ['a', 'b', 'c']]));      // ["a", "b", "c"]


// push
// function push(array, ...items) {
//   for (let i = 0; i < items.length; i += 1) {
//     array[array.length] = items[i]
//   }

//   return array.length
// }

// const array2 = [1, 2, 3];
// console.log(push(array2, 4, 5, 6));              // 6
// console.log(array2);                // [1, 2, 3, 4, 5, 6]
// console.log(push([1, 2], ['a', 'b']));          // 3
// console.log(push([], 1));                       // 1
// console.log(push([]));                          // 0

// 6. Array and String Reverse
// function reverse(inputForReversal) {
//   let resultStr = '';
//   let resultArr = [];

//   if (Array.isArray(inputForReversal)) {
//     for (let index = inputForReversal.length - 1; index >= 0; index -= 1) {
//       resultArr[resultArr.length] = inputForReversal[index];
//     }
    
//     return resultArr;
//   } else {
//     for (let index = inputForReversal.length - 1; index >= 0; index -= 1) {
//       resultStr += inputForReversal[index];
//     }

//     return resultStr;
//   }
// }

// function reverse(inputForReversal) {
//   let resultArr = [];

//   for (let index = inputForReversal.length - 1; index >= 0; index -= 1) {
//     resultArr[resultArr.length] = inputForReversal[index];
//   }
  
//   return Array.isArray(inputForReversal) ? resultArr : resultArr.join('');
// }


// console.log(reverse('Hello'));           // "olleH"
// console.log(reverse('a'));               // "a"
// console.log(reverse([1, 2, 3, 4]));      // [4, 3, 2, 1]
// console.log(reverse([]));                // []

// const array = [1, 2, 3];
// console.log(reverse(array));             // [3, 2, 1]
// console.log(array);                      // [1, 2, 3]

// 7. Array Shift and Unshift
// function shift(args) {
//   if (args.length <= 0) {
//     return undefined;
//   }

//   const shifted = args[0];
//   for (let index = 0; index < args.length - 1; index += 1) {
//     args[index] = args[index + 1];
//   }

//   args.length = args.length - 1;
//   return shifted;
// }

// function unshift(array, ...args) {
//   let length = array.length + args.length;
//   let arrTemp = array.slice();
//   let i = 0;

//   for (let index = 0; index < length; index += 1) {
//     if (index < args.length) {
//       array[index] = args[index]
//     } else {
//       array[index] = arrTemp[i];
//       i += 1;
//     }
//   }
//   return array.length;
// }

// function shift(array) {
//   let result;

//   if (array.length !== 0) {
//     result = array.splice(0, 1).pop();
//   }

//   return result
// }

// function unshift(array, ...args) {
//   for (let i = 0; i < args.length; i += 1) {
//     array.splice(i, 0, args[i]);
//   }

//   return array.length;
// }

// const testArray = [1, 2, 3];
// console.log(shift(testArray));                // 1
// console.log(testArray);                       // [2, 3]
// console.log(unshift(testArray, 5));           // 3
// console.log(testArray);                       // [5, 2, 3]

// 8. Array Slice and Splice
// function slice(array, begin, end) {
//   let sliced = [];

//   for (let i = begin; i < end; i += 1) {
//     sliced.push(array[i]);
//   }

//   return sliced;
// }

// function splice(array, start, deleteCount, ...args) {
//   if (start > array.length) {
//     start = array.length
//   }

//   if (deleteCount > array.length - start) {
//     deleteCount = array.length - start;
//   }

//   const arrayCopy = slice(array, 0, array.length);
//   const elementCount = args.length;
//   const newLength = array.length + elementCount - deleteCount;
//   array.length = newLength;

//   for (let i = 0; i < elementCount; i += 1) {
//     array[start + i] = args[i];
//   }

//   let copyBackCount = arrayCopy.length - (start + deleteCount);
//   for (let i = 0; i < copyBackCount; i += 1) {
//     array[start + elementCount + i] = arrayCopy[start + deleteCount + i];
//   }

//   return slice(arrayCopy, start, start + deleteCount);
// }

// const arr5 = [1, 2, 3];
// console.log(splice(arr5, 0, 0, 'a'));               // []
// console.log(arr5);                                  // ["a", 1, 2, 3]

// 9. Oddities
// function oddities(array) {
//   const oddElements = [];

//   for (let i = 0; i < array.length; i += 2) {
//     oddElements.push(array[i]);
//   }

//   return oddElements;
// }

// oddities([2, 3, 4, 5, 6]) === [2, 4, 6];      // false
// oddities(['abc', 'def']) === ['abc'];         // false

// array comparision compares to a specific array
// the return of oddities is a new array, not a mutation
// therefore we expect a return of false as we are comparision a different array

// 10. 
// function areArraysEqual(array1, array2) {
//   if (array1.length !== array2.length) {
//     return false;
//   }

//   let array2Copy = array2.slice();
//   for (let i = 0; i < array1.length; i += 1) {
//     let index = array2Copy.indexOf(array1[i]);
//     if (index < 0) {
//       return false;
//     } else {
//       array2Copy.splice(index, 1);
//     }
//   }

//   return true;
// }

// console.log(areArraysEqual([1, 2, 3], [1, 2, 3]));                  // true
// console.log(areArraysEqual([1, 1, 2, 2], [4, 2, 3, 1]));            // false
// console.log(areArraysEqual(['1', 2, 3], [1, 2, 3]));                // false