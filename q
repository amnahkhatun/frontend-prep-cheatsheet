// const object = {
//   who: 'World',
//   greet() {
//     return `Hello, ${this.who}!`;
//   },
//   farewell: () => {
//     return `Goodbye, ${this.who}!`;
//   }
// };

// const object2 = {
//     who:’India’
// }

// console.log(object.greet());   // Hello world
// console.log(object.farewell()); //Goodbye world
// const c = object.greet;
// console.log(c()); //
// const d = object.farewell;
// console.log(d());
// const m = object.farewell.call(object2);
// console.log(m) // Goodbye India
// const n = object.greet.bind(object2);
// console.log(n())// Hello India

// const person = { 
//                 name : 'Amit' , 
//                 data : { 
//                   images : 
//                         { name : 'Lotus' }
//                 }
//               };

// {name, data} = person

// person.data.images.name

// {name} = person.data.images


// setTimeout(() => {console.log(1)}, 0)
// console.log(Promise.resolve(2));
// setTimeout(() => {console.log(3)}, 1000)
// console.log(4);

// 4,2,1,3



// class Person {
//   constructor(){
//     super();
//     this.fname = "amnah";
//     this.lname = "khatun";
//     this.printName(){
//       console.log(fname, lname)
//     }
//   }
// }

//  let a = 0;

// function functionName(){
 
//   a ++;
// }

// const startIncrementor = functionName();
//     startIncrementor();  // Next Incremented Number
//     startIncrementor(); // Next Incremented Number
//     startIncrementor(); // Next Incremented Number



const items = [
              { age : 25, students : 5 }, //25*5
              { age : 34 , students : 7 } , 
              { age : 45, students : 8 } , 
              {age : 22 , students : 2}
              ];



function average(){
  let sum =0;
  let s = 0;
  items.map(({age,students})=>{
   sum = age*students;
    s += students
  console.log(sum,s)
  })

}
average()






































