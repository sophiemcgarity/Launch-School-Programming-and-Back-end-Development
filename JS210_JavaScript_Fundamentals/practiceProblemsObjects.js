// Section 4. Practice Problems: Working with Object Properties
// 1.
// function objectHasProperty(object, string) {
//   for (item in object) {
//     if (item === string) {
//       return true;
//     }
//   }
//   return false;
// }

// function objectHasProperty(object, string) {
//   let keys = Object.keys(object);
//   return keys.indexOf(string) !== -1;
// }

// let pets = {
//   cat: 'Simon',
//   dog: 'Dwarf',
//   mice: null,
// };

// console.log(objectHasProperty(pets, 'dog'));       // true
// console.log(objectHasProperty(pets, 'lizard'));    // false
// console.log(objectHasProperty(pets, 'mice'));      // true

// 2. 
// function incrementProperty(object, property) {
//   if (object[property]) {
//     object[property] += 1;
//   } else {
//     object[property] = 1;
//   }
// }

// let wins = {
//   steve: 3,
//   susie: 4,
// };

// incrementProperty(wins, 'susie');   // 5
// wins;                               // { steve: 3, susie: 5 }
// incrementProperty(wins, 'lucy');    // 1
// console.log(wins);                  // { steve: 3, susie: 5, lucy: 1 }

// 3. 
// function copyProperties(object1, object2) {
//   let keys = Object.keys(object1);
//   let values = Object.values(object1);

//   for (let i = 0; i < keys.length; i += 1) {
//     object2[keys[i]] = values[i];
//   }

//   return keys.length;
// }

// function copyProperties(source, destination) {
//   let count = 0;
//   for (let property in source) {
//     destination[property] = source[property];
//     count += 1;
//   }

//   return count;
// }

// let hal = {
//   model: 9000,
//   enabled: true,
// };

// let sal = {};
// copyProperties(hal, sal);  // 2
// console.log(sal);                       // { model: 9000, enabled: true }

// 4. 
// function wordCount(string) {
//   let words = string.split(' ');
//   let count = {};

//   for (word in words) {
//     if (count[words[word]]) {
//       count[words[word]] += 1;
//     } else {
//       count[words[word]] = 1;
//     }
//   }

//   return count;
// }

// console.log(wordCount('box car cat bag box'));  // { box: 2, car: 1, cat: 1, bag: 1 })


// Section 9. Working with the Math Object
// 1. 
// let radToDeg = radians => radians / (Math.PI / 180);

// console.log(radToDeg(50));

// 2.
// let number = -180;
// console.log(Math.abs(number));

// 3.
// let number = 16777216;
// console.log(Math.sqrt(number));

// 4.
// let number = 16;
// console.log(Math.pow(number, 6));

// 5.
// let a = 50.72;
// let b = 49.2;
// let c = 49.86;

// console.log(Math.floor(a));
// console.log(Math.ceil(b));
// console.log(Math.round(c));

// 6.
// function randomNumber(min, max) {
//   if (min === max) {
//     return min;
//   } else if (min > max) {
//     [min, max] = [max, min];
//   }
//   const number = Math.floor(Math.random() * (max - min + 1)) + min;
//   return number;
// }

// console.log(randomNumber(10, 1));

// Secion 10. Working with Dates
// 1.
// let today = new Date();
// console.log(today);

// 2.
// let today = new Date();
// console.log(`Today's day is ${today.getDay()}`);

// 3. 
// let daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
// let today = new Date();
// console.log(`Today's day is ${daysOfWeek[today.getDay()]}`);

// 4.
// let daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
// let today = new Date();
// let dayNum = today.getDay();
// let calendarDate = today.getDate();
// console.log(`Today's day is ${daysOfWeek[dayNum]}, ${calendarDate}th!`);

// 5. 6. 7.
// let daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
// let months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// let today = new Date();
// let dayNum = today.getDay();
// let calendarDate = today.getDate();
// let calendarMonth = today.getMonth();

// function dateSuffix(day) {
//   let dateStr = String(day);
//   let lastNum = dateStr.length - 1;

//   if (dateStr[lastNum] === '1') {
//     return 'st';
//   } else if (dateStr[lastNum] === '2') {
//     return 'nd';
//   } else if (dateStr[lastNum] === '3') {
//     return 'rd';
//   } else {
//     return 'th';
//   }
// };

// console.log(`Today's day is ${daysOfWeek[dayNum]}, ${months[calendarMonth]} ${calendarDate}${dateSuffix(calendarDate)}!`);

// 8.
// let today = new Date();

// function dateSuffix(day) {
//   let dateStr = String(day);
//   let lastNum = dateStr.length - 1;

//   if (dateStr[lastNum] === '1') {
//     return 'st';
//   } else if (dateStr[lastNum] === '2') {
//     return 'nd';
//   } else if (dateStr[lastNum] === '3') {
//     return 'rd';
//   } else {
//     return 'th';
//   }
// };

// function formattedMonth(today) {
//   let months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
//   let calendarMonth = today.getMonth();
//   return months[calendarMonth];
// }

// function formattedDay(today) {
//   let daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
//   let dayNum = today.getDay();
//   return daysOfWeek[dayNum];
// }

// function formattedDate(today) {
//   let day = formattedDay(today);
//   let month = formattedMonth(today);
//   let calendarDate = today.getDate();
//   console.log(`Today's day is ${day}, ${month} ${calendarDate}${dateSuffix(calendarDate)}`);
// }

// formattedDate(today);

// 9. 
// let today = new Date();
// console.log(today.getYear());
// console.log(today.getFullYear());

// 10.
// let today = new Date();
// console.log(today.getTime());

// 11.
// let tomorrow = new Date(today.getTime());
// tomorrow.setDate(today.getDate() + 1);
// formattedDate(tomorrow);

// 12.
// let nextWeek = new Date(today.getTime());
// console.log(nextWeek === today); // false, point to different objects

// 13.
// let nextWeek = new Date(today.getTime() + 7);
// console.log(nextWeek.toDateString === today.toDateString); 

// 14.
// function formatTime(dateObject) {
//   let hours = String(dateObject.getHours());
//   let minutes = String(dateObject.getMinutes());

//   hours.length < 2 ? hours = '0' + hours : hours;
//   minutes.length < 2 ? minutes = '0' + minutes : minutes;

//   return `${hours}:${minutes}`;
// }

// console.log(formatTime(new Date(2013, 2, 1, 1, 10)));

// Section 12. Practice Problem: Welcome Stranger
// function greetings(names, info) {
//   let nameGreet = 'Hello, ' + names.join(' ') + '!';
//   let statusGreet = ' Nice to have a ' + info.title + ' ' + info.occupation + ' around.'
//   return nameGreet + statusGreet;
// }

// console.log(greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }));

// Section 13. Practice Problem: Repeated Characters

// count number of each character in an object
// ignores case so can lowercase input
// create an array of lowercase characters
// initialize variable pointing to empty object
// iterate over the array of chars
// if the char is not in count
  // add char to count with value of 1
// if char is in count
  // + 1 to that chars count

// function repeatedCharacters(string) {
//   let chars = string.toLowerCase().split('');
//   let count = {};
//   let repeated = {};

//   for (char in chars) {
//     if (count[chars[char]]) {
//       count[chars[char]] += 1
//     } else {
//       count[chars[char]] = 1;
//     }
//   }

//   let keys = Object.keys(count);
//   for (let i = 0; i < keys.length; i += 1) {
//     if (count[keys[i]] > 1) {
//       repeated[keys[i]] = count[keys[i]];
//     }
//   }
//   console.log(repeated);


// }

// repeatedCharacters('Programming');