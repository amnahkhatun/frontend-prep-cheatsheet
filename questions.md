## PAYTM

// problem: given array = [1,2,3,4,5,6]
// print all ordered pairs that matches the sum n.
// n = 8
// so output is [[2,6],[3,5],[5,3],[6,2]]
// let arr = [1, 2, 3, 4, 5, 6];
let arr = [-1, 1, 2, 3, 4, 5, 6, 9];

function orderedArray1(arr) {
  let target = 8;
  let low = 0;
  let high = arr.length - 1;
  while (low < high) {
    if (arr[low] + arr[high] === target) {
      console.log(arr[low], arr[high]);
    }
    if (arr[low] + arr[high] > target) {
      high--;
    } else {
      low++;
    }
  }
}

function orderedArray(arr) {
  let target = 8;
  for (let i = 0; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] === target) {
        //   console.log(arr[i], arr[j]);
      }
    }
  }
}
// orderedArray1(arr);
```
var x = "x";

function findName() {
  console.log(x); //undefined
  var x = "b";
}
findName();
```
---
```
var obj = {
  a: 7,
  b: () => console.log(this.a, this), //undefined, Window
  c: function () {
    console.log(this.a, this); // 7, {a: 7, b: ƒ, c: ƒ}
  }
};
obj.b();
obj.c();
```
---
```
setTimeout(() => console.log("1"), 0);
setTimeout(() => console.log("2"), 500);
Promise.resolve("3").then(val => console.log(val));
console.log("4");

// O/P : 4,3,1,2
```
---
```
add(1, 2) || add(1)(2)

function add(x, y) {
  if (y !== undefined) {
    return x + y;
  } else {
    return function (y) {
      return x + y;
    };
  }
}
```
---
```
function add2(...arr) {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}
console.log(add2(1, 2, 3, 4)); //10
```
---
```
function add3(a) {
  return function (b) {
    return b == null ? a : add3(a + b);
  };
}
add3(2)(3)(1)(4)(); //10
```
---
## NIUM
```
let obj1 = {
  fname: "amnah",
  lname: "khatun",
  address: {
    city: "Jamshedpur"
  }
};

let obj2 = { ...obj1 }; //shallow copy

obj2.fname = "elon";
obj2.address.city = "new york";
console.log(obj1, "obj1"); // { fname: 'amnah', lname: 'khatun', address: { city: 'new york' } }
console.log(obj2, "obj2"); // { fname: 'elon', lname: 'khatun', address: { city: 'new york' } }

let obj2 = obj1;
console.log(obj1, "obj1"); // { fname: 'elon', lname: 'khatun', address: { city: 'new york' } }
console.log(obj2, "obj2"); // { fname: 'elon', lname: 'khatun', address: { city: 'new york' } }

```
## APTECH
```
(function () {
  var a = (b = 3);

  console.log(a, b); // 3,3
})();

console.log("a defined? " + typeof a); //undefined
console.log("b defined? " + typeof b); //number
```
---
```
var foo = "xyz";

var myObject = {
  foo: "bar",
  func: function () {
    var self = this;
    console.log("outer func:  this.foo = " + this.foo); //bar
    console.log("outer func:  self.foo = " + self.foo); //bar
    (function () {
      //In IIFE this points to window / global object
      console.log("inner func:  this.foo = " + this.foo); // xyz
      console.log("inner func:  self.foo = " + self.foo); //bar
    })();
  }
};
myObject.func();
```
---

## Byjus
```
let filterNonUnique = arr => {
  let mySet = new Set();
  for (let i = 0; i < arr.length; i++) {
    if (!mySet.has(arr[i])) {
      mySet.add(arr[i]);
    } else {
      mySet.delete(arr[i]);
    }
  }
  return mySet;
};

console.log(filterNonUnique(["a", "c", "b", "d", "c", "b", "e"])); //{'a', 'd', 'e'}
```
---
```
//Using map

let filterNonUnique = arr => {
  let myMap = new Map();
  for (let i = 0; i < arr.length; i++) {
    if (!myMap.has(arr[i])) {
      myMap.set(arr[i], 1);
    } else {
      myMap.set(arr[i], myMap.get(arr[i]) + 1);
    }
  }
  let temp = [];
  myMap.forEach((value, key) => {
    if (value === 1) {
      temp.push(key);
    }
  });
  return temp;
};
```
---
  
```
//replace space
replace(/ /g, "");

//replace comma
replace(/,/g, "");

function isPalindrome(str) {
  str = str.replace(/\W/g, "").toLowerCase();
  return (
    str ==
    str
      .split("")
      .reverse()
      .join("")
  );
}

console.log(isPalindrome("level")); // logs 'true'
console.log(isPalindrome("levels")); // logs 'false'
console.log(isPalindrome("A car, a man, a maraca")); // logs 'true'
```
---
```
function matches(obj1, obj2) {
  for (let [key, value] of Object.entries(obj1)) {
    console.log(key);
  }
}
const obj1 = { color: "white", age: 25, weight: true };
const obj2 = { color: "white", weight: true };
const obj3 = { color: "white", age: 26, weight: true };
console.log(matches(obj1, obj2)); // true
console.log(matches(obj2, obj1)); // false
console.log(matches(obj3, obj1)); // false
console.log(matches(obj3, obj2)); // true
```
---
```
function foo() {
  let a = (b = 0);
  a++;
  return a;
}

foo();
console.log(typeof a); //undefined
console.log(typeof b); //number
```
---
```
var Employee = {
  company: "xyz"
};
var emp1 = Object.create(Employee);
delete emp1.company;
console.log(emp1.company); //xyz

var emp1 = Employee;
delete emp1.company;
console.log(emp1.company); //undefined

var emp1 = {...Employee};
delete emp1.company;
console.log(emp1.company) //undefined
```
---
```
console.log(1 + "2" + "2"); // 122
console.log(1 + +"2" + "2"); // 32
console.log(1 + -"1" + "2"); // 02
console.log(+"1" + "1" + "2"); // 112
console.log("A" - "B" + "2"); //NaN2
console.log("A" - "B" + 2); //NaN

console.log("0 || 1 = " + (0 || 1)); //1
console.log("1 || 2 = " + (1 || 2)); //1
console.log("0 && 1 = " + (0 && 1)); //0
console.log("1 && 2 = " + (1 && 2)); //2
```

## Nium
```
var structure2 = {
  name: "alpha",
  array: [
    {
      name: "beta",
      object: {
        name: "alpha1",
        array: [{ name: "beta1" }, { name: "gamma1" }],
        object: {
          name: "delta1",
          array: [{ name: "epsilon1" }]
        }
      }
    },
    { name: "gamma" }
  ],
  object: {
    name: "delta",
    array: [{ name: "epsilon" }]
  }
};

var structure = {
  name: "alpha",
  array: [{ name: "beta" }, { name: "gamma" }],
  object: {
    name: "delta",
    array: [{ name: "epsilon" }]
  }
};

let newArr = [];

function getNames(structure) {
  newArr.push(structure["name"]);

  for (const [key, value] of Object.entries(structure)) {
    if (key === "array") {
      value.map(item => {
        getNames(item);
      });
    }
    if (key === "object") {
      getNames(value);
    }
  }
  return newArr;
}

console.log(getNames(structure2));

// expected result: [ 'alpha', 'beta', 'gamma', 'delta', 'epsilon' ]
// expected result: [ 'alpha', 'beta', 'alpha1', 'beta1', 'gamma1', 'delta1', 'epsilon1','gamma', 'delta', 'epsilon' ]
```
---
```
let obj1 = {
  fname: "amnah",
  khatun: "khatun",
  address: {
    city: "jsr"
  }
};

let obj2 = { ...obj1 };

obj2.address.city = "mumbai";
console.log(obj1, "obj1"); // both obj.address.city will change
console.log(obj2, "obj2");
```
---
```
function delay(time) {
  let myPromise = new Promise(function (resolve) {
    setTimeout(resolve, time);
  });

  return myPromise;
}

var callback = () => alert("runs after 3 seconds");

delay(3000).then(callback);
```
## Zapr 1st round
```
let obj1 = {
  fname: "amnah"
};

let obj2 = {
  fname: "Steve"
};

function printName(greet) {
  console.log(this.fname, greet);
}
 
printName.call(obj1, "hi"); //amnah hi
printName.apply(obj2, ["hi"]);//Steve hi

function hello() {
  setTimeout(() => {
    console.log(this.name);
  }, 100);
}
hello.call({ name: "tom" }); //tom
```
---
```
for (var i = 0; i < 6; i++) {
  function xyz(j) {
    setTimeout(function () {
      console.log(j);
    }, 0);
  }
  xyz(i);
}
O/P: 0,1,2,3,4,5
```
---
```
(function () {
  try {
    throw new Error();
  } catch (x) {
    var x = 1,
      y = 2;
    console.log(x); //1
  }
  console.log(x); // undefined
  console.log(y); // 2
})();
```
---
```
//The above will be interpreted like this

(function () {
  var x, y;
  try {
    throw new Error();
  } catch (x) {
    x = 1;
    y = 2;
    console.log(x); //1
  }
  console.log(x);
  console.log(y);
})();
```
---
```
var a = [1, 2, 3];
var b = [1, 2, 3];
var c = "1,2,3";
// == implicitely converts one of the value

console.log(a == c); // true //array is implicitly converted to primitive value ie string
console.log(b == c); // true // implicitely converts array to string
console.log(a == b); // false
console.log(typeof a); //object
console.log(typeof b); //object
console.log(typeof c); //string
```
---
```
var Employee = {
  company: "xyz"
};
var emp1 = Object.create(Employee);
delete emp1.company;
console.log(emp1.company); //xyz

// The code above will output `xyz` as output. Here `emp1` object got company as **prototype** property. delete operator doesn't delete prototype property.
// emp1 object doesn't have company as its own property. you can test it console.log(emp1.hasOwnProperty('company')); //output : false However, we can delete company property directly from Employee object using delete Employee.company or we can also delete from emp1 object using __proto__ property delete emp1.__proto__.company.

console.log(emp1.hasOwnProperty("company")); //false
```
---
```
var courses = ["JavaScript", "Java", "C", "C++", "Python"];
delete courses[2];
//  console.log(courses) //["JavaScript", "Java", undefined, "C++", "Python"]
// console.log(courses.map(e => 7)); //[7, 7, undefined, 7, 7]
var b = [];
b[0] = undefined;
b[2] = 1;
console.log(b.map(e => 7)); //[7, undefined, 7]
```
---
```
const myObj = {
  a: 1,
  b: "hello",
  c: [0, 1, 2],
  d: { e: 1, f: 2 }
};
Object.freeze(myObj);

myObj.b = "hi";

console.log(myObj);
```
---
```
/* There is an array. find two elements in array that sum to x. retrun -1 if no such elements exist*/
const x = 13;
const arr = [5, 8, 3, 13, 15, 12, 8, 20, 12, 20];

function dummy(arr,x){
let myMap = new Map();
for(let i =0;i<arr.length;i++){
  let diff=x - arr[i];
  if(myMap.has(diff)){
    return [arr[i],diff]
  }else{
    myMap.set(arr[i],i)
  }
}
}
console.log(dummy(arr,x))
```
---
## signEasy
```
(function () {
  try {
    throw new Error();
  } catch (x) {
    var x = 1,
      y = 2;
    console.log(x); // 1
  }
  console.log(x); // undefined
  console.log(y); //2
})();
```
---
```
var myObject = {
  foo: "bar",
  func: function () {
    var self = this;
    console.log("outer func:  this.foo = " + this.foo); //bar
    console.log("outer func:  self.foo = " + self.foo); //bar
    (function () {
      console.log("inner func:  this.foo = " + this.foo); //undefined
      console.log("inner func:  self.foo = " + self.foo); //bar
    })();
  }
};
// myObject.func();
```
---

// p:nth-child(2) { color: black; }
// p:nth-of-type(2) { color: red; }
// <div>a</div>
// <p>b</p>
// <p>c</p>

//o/p -> c will be red, b will be black

// #example1 {
//   box-sizing: content-box;
//   width: 300px;
//   height: 100px;
//   padding: 30px;
//   border: 10px solid blue;
// }
// #example2 {
//   box-sizing: border-box;
//   width: 300px;
//   height: 100px;
//   padding: 30px;
//   border: 10px solid blue;
// }

//example1 box will be bigger than example2

---

```
1 && "ABC"; // ABC
1 || "ABC"; // 1
false - "abc"; // NaN
```
---
```
var variable1 = 23;
let variable2 = 89;
function catchValues() {
  console.log("1", variable1); //23
  console.log("2", variable2); //89
}
catchValues();
console.log("3", window.variable1); //23
console.log("4", window.variable2); //undefined, let is not stored in window object
```
---
```
function foo() {
  let a = (b = 0);
  a++;
  return a;
}
foo();
console.log(typeof a); //undefiend
console.log(typeof b); //number

const length = 4;
const numbers = [];
for (var i = 0; i < length; i++);
{
  numbers.push(i + 1);
}
console.log(numbers); //[5]
```
---

## Epam anywhere
```
const dummy = [1, 2, 3, 4]
console.log(dummy.indexOf(2)) //1
console.log(dummy.indexOf(21)) //-1

for (var i = 0; i <= 5; i++) {
  console.log(i) // 0 1 2 3 4 5
}
console.log(i) //6

for (let j = 0; j <= 5; j++) {
  console.log(j) // 0 1 2 3 4 5
}
console.log(j) //reference error
```
---

## Lyric
// /**
//  *
//  * Write a function which takes in an object and a path string (ex: "key1.key2.key3")
//  * and returns the value requested in the path from within the object.
//  *
//  */

```
 let obj = {
  a: {
    b: {
      c: {
        d: {
          e: 35
        },
        z: "earth"
      }
    },
    likes: ["react", "tailwindcss", "typescript"]
  }
};

console.log(returnNestedValue(obj, "a.b.c.d.e")); // should return "35"
console.log(returnNestedValue(obj, "a.c.d.e")); // should return "null"
console.log(returnNestedValue(obj, "a.b.c.z")); // should return "earth"
console.log(returnNestedValue(obj, "a.likes")); // should return "['react', 'tailwindcss', 'typescript']"

```
---

// import React, { useEffect } from "react";

// export function GrandParent() {
//   console.log("Inside Grand Parent");

//   useEffect(() => {
//     return () => console.log("Out of grand Parent");
//   }, []);

//   return <Parent />;
// }

// function Parent() {
//   console.log("Inside Parent");

//   useEffect(() => {
//     return () => console.log("Out of Parent");
//   }, []);

//   return <Child />;
// }

// function Child() {
//   console.log("Inside Child");

//   useEffect(() => {
//     return () => console.log("Out of Child");
//   }, [])
// return <div>Child</div>;
// }

// import React, { useState } from "react";

// export function APIComponent() {
//   const [count, setCount] = useState(0);
//   const [text, setText] = useState("Text");

//   async function functionA() {
//     const response = await Promise.resolve(11);
//     setCount(response); //11
//     if (count > 10) { 
//       setText("Greater than 10");
//     }
//   }

//   return (
//     <div>
//       <button onClick={() => functionA()}>API CALL</button>
//       {count} //11
//       {text} // text
//     </div>
//   );
// }

---
```
function foo(a, b) {
  console.log(b);

  return {
    foo: function (c) {
      return foo(c, a);
    },
  };
}

const caller = foo(0);
caller(1);
caller(2);
caller(3);

```
---
```
function changeData(a, b, c) {
  a = a * 10;
  b.item = "changed";
  c = { item: "changed" };
}

var num = 10;
var obj1 = { item: "unchanged" };
var obj2 = { item: "unchanged" };

changeData(num, obj1, obj2);

console.log(num); //10
console.log(obj1.item); //changed
console.log(obj2.item); //unchanged
```
---
```
var Employee = {
  company: "xyz"
};
var emp1 = {...Employee};
delete emp1.company;
console.log(emp1.company); //undefined
```
---

## HCL

```
const jobs = [
  { "name": "dhiraj", "isactive": true },
  { "name": "raj", "isactive": true },
  { "name": "sunil", "isactive": false }
]

function dummy(jobs) {
  let newArr = [];

  for (let i = 0; i < jobs.length; i++) {
    if (jobs[i].isactive) {
      newArr.push(jobs[i])
    }
    // console.log(jobs[i].isactive)
  }
  return newArr
  }
  ```
  ---
  ```
  function isInt(num) {
  return num % 1 === 0;
}

console.log(isInt(4.5)) //false
```
