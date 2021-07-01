// 1. Literal
// To access the value of a property using bracket notation the operand inside the brackets that references the property name (key) must be a string value. If the operand is a number, JavaScript converts it to a string.

// 2. Literal Method
// Object literals must be called by appending parenthesis in ordewr to be executed. Functions are first class object, so referencing the function name without the parentheses would return the function itself, not the string representation.

// 3. Mutation
// const array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo'];
// const array2 = [];

// for (let i = 0; i < array1.length; i += 1) {
//   array2.push(array1[i]);
// }

// for (let i = 0; i < array1.length; i += 1) {
//   if (array1[i].startsWith('C')) {
//     array1[i] = array1[i].toUpperCase();
//   }
// }

// console.log(array1); 

// 4. Dynamic
// const myObject = {
//   prop1: '123',
//   prop2: '234',
//   'prop 3': '345',
// };

// const prop2 = '456';
// myObject['prop2'] = '456';
// myObject[prop2] = '678';

// console.log(myObject[prop2]); // 678, 
// a property with the name '456' and the value '678' was added to myObject
// console.log(myObject.prop2);  // 456
// the string literal property of myObject is accessed, the value of '456' is logged
// different from the inital property as this was reassigned

// prop2 is assigned the value of 456 
// objects access properties from the string value
// prop2 is reassigned the value of 456

// const myObj = {};
// myObj[myFunc()] = 'hello, '; // we can assign a value with myFunc() as the function declaration is hoisted 

// function myFunc() {
//   return 'funcProp';
// }

// console.log(myObj); 
// {
//    'funcProp': 'hello, '
// }
// myObj[myFunc()] = 'world!';
// console.log(myObj);
// {
//    'funcProp': 'world!'
// }

// value of myObj[myFunc()] is reassigned

// 5. Array Object Part 1
// const myArray = ['a', 'b', 'c'];

// console.log(myArray[0]);  // a
// console.log(myArray[-1]); // undefined

// myArray[-1] = 'd';
// myArray['e'] = 5;
// myArray[3] = 'f';

// console.log(myArray[-1]);   // 'd'
// console.log(myArray['e']);  // 5
// console.log(myArray);       // ['a', 'b', 'c', 'f', '-1' : 'd', 'e': 5
// for any value that has a key (proprty name) of anything besides a non-negative integer, the key is also displayed when the array is logged

// 6. Array Object Part 2
// const myArray = [5, 5];
// myArray[-1] = 5;
// myArray[-2] = 5;

// function average(array) {
//   let sum = 0;

//   for (let i = -2; i < array.length; i += 1) {
//     sum += array[i];
//   }

//   return sum / array.length;
// }

// average(myArray);

// [5, 5, '-1': 5, '-2': 5]
// an array property with a key of anything other than a non-negative integer is not counted as part of the array's length
// therefore the length of the array is 2
// the values of the array can be accessed with their key resulting in sum === 20
// average then returns 20 / 2, 10

// function average(array) {
//   let sum = 0;

//   for (let i = -2; i < array.length; i += 1) {
//     sum += array[i];
//   }

//   return sum / Object.keys(array).length; 
// }

// console.log(average(myArray));

// use Object.keys(objectName).length to get values of non negative and other properties in the array object

// 7. What's my Bonus
// function calculateBonus() {
//   return arguments[1] ? arguments[0] / 2 : 0;
// }
// if the second argument passed is true, the first part of the ternary executes, returning half the value of the first argument, if the first argument is false then 0 is returned

// calculateBonus(2800, true);               // 1400
// calculateBonus(1000, false);              // 0
// calculateBonus(50000, true);              // 25000

// While there are no parameters that are explicitly defined for the calculateBonus function, there are still "arguments" that are available locally withing the function. This is because all functions have an arguments object that is available locally. The arguments object contains an entry for every argument passed to the function.

// 8. The End is Near But Not Here
// function penultimate(string) {
//   return string.split(' ').slice(-2, -1)[0];
// }

// console.log(penultimate('last word'));                    // expected: "last"
// console.log(penultimate('Launch School is great!'));      // expected: "is"

// the key -2 does not point to a value within the array of split string chars
// using a negative index does not extract elements from the end of the array, nor does it raise an error instead it returns undefined
// This behavior is caused by the fact that in JavaScript, Arrays are objects. By using -1 with bracket notation myArray[-1] we are actually telling JavaScript to access the property that has a key of -1 and return that properties value
// Array.prototyple.slice method can be passed a negative index as an argument to extract elements from the end of an array
// passing the ending index of -1 causes slice to stop at index -2
// bracket notation is then used to extract the value from the returned sliced array

// 9. After Midnight Part 1
// const MILLISECONDS_PER_MINUTE = 60000;

// function timeOfDay(deltaMinutes) {
//   const midnight = new Date('1/1/2000 00:00');
//   const afterMidnight = new Date(midnight.getTime() + deltaMinutes * MILLISECONDS_PER_MINUTE);
//   let hours = padWithZeroes(afterMidnight.getHours(), 2);
//   let minutes = padWithZeroes(afterMidnight.getMinutes(), 2);

//   return hours + ':' + minutes;
// }

// function padWithZeroes(number, length) {
//   let numberString = String(number);

//   while (numberString.length < length) {
//     numberString = `0${numberString}`;
//   }

//   return numberString;
// }

// console.log(timeOfDay(3000));

// 10. After Midnight Part 2
// const MILLISECONDS_PER_MINUTE = 60000;
// const MINUTES_PER_HOUR = 60;
// const HOURS_PER_DAY = 24;
// const MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR;

// function afterMidnight(timeStr) {
//   const midnight = new Date('Jan 1, 2000 00:00');
//   const time = new Date('Jan 1, 2000 ' + timeStr);
//   const minutes = (time.getTime() - midnight.getTime()) / MILLISECONDS_PER_MINUTE;
//   return minutes;
// }

// function beforeMidnight(timeStr) {
//   let deltaMinutes = MINUTES_PER_DAY - afterMidnight(timeStr);
//   if (deltaMinutes === MINUTES_PER_DAY) {
//     deltaMinutes = 0;
//   }

//   return deltaMinutes;
// }

// let mid = new Date('Jan 1, 2000 ' + '00:00')

// console.log(afterMidnight('12:34'));













