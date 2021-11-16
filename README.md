# frontend-notes

## [Node notes](./NODE.md)


[Github](https://www.github.com)

_Italic text here_

**Bold text here**

~~Strikethrough text~~

![imagename](https://www.google.com/imgres?imgurl=https%3A%2F%2Fscx1.b-cdn.net%2Fcsz%2Fnews%2F800a%2F2015%2F2-dostarsmove.jpg&imgrefurl=https%3A%2F%2Fphys.org%2Fnews%2F2015-02-stars.html&tbnid=mHGQAQZKb4FguM&vet=10CDUQMyh9ahcKEwjY7aKY4q_wAhUAAAAAHQAAAAAQAg..i&docid=19KTAI7ALuXl9M&w=500&h=500&q=stars%20image&ved=0CDUQMyh9ahcKEwjY7aKY4q_wAhUAAAAAHQAAAAAQAg)

| Name | Email            | Address  |
| ---- | ---------------- | -------- |
| John | john@example.com | Address1 |

> Your quote looks like this.

```Let a = 2;

```

---

1. Item 1
2. Item 2
3. Item 3
   - Sub item 1
   - Sub item 3

- Unordered item
- Unordered item
- Unordered item

---

# Tech round 1

### HTML

| div                                                                      | span                                                                                          |
| ------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------- |
| The <div> tag is a block level element                                   | The <span> tag is an inline element.                                                          |
| It is best to attach it to a section of a web page.                      | It is best to attach a CSS to a small section of a line in a web page.                        |
| This tag should be used to wrap a section, for highligting that section. | This tag should be used to wrap any specific word that you want to highlight in your webpage. |

- Elements such as <header>, <nav>, <section>, <article>, <aside>, and <footer> act more or less like <div> elements. They group other elements together into page sections.

- A block-level element is drawn as a block that stretches to fill the full width available to it i.e, the width of its container and will always start on a new line.
  Elements that are block-level by default: <div>, <img>, <section>, <form>, <nav>.

- Inline elements are drawn where they are defined and only take up space that is absolutely needed. The easiest way to understand how they work is to look at how text flows on a page.
  Examples of elements that are inline by default: <span>, <b>, <strong>, <a>, <input>.

- Marquee is used for the scrolling text on a web page. It scrolls the image or text up, down, left or right automatically. You should put the text which you want to scroll within the <marquee>……</marquee> tag.

- An iframe is used to display a web page within a web page.

- To create a multicolor text, you can use <font color =”color”> </font> for the specific texts that you want to color.

- <!DOCTYPE html> is used to instruct the web browser about the HTML page.

https://www.freecodecamp.org/news/semantic-html5-elements/#:~:text=Semantic%20HTML%20elements%20are%20those,content%20that%20is%20inside%20them.

### CSS

- https://rananitesh99.medium.com/five-css-interview-questions-you-will-be-asked-every-time-72fff69ecde

- Height is the vertical measurement of the container.
- line-height is the distance from the top of the first line of text to the top of the second. It is relevent when user might resize the text.
- If you wrap the text in a div, give the div a height, and the text grows to be 2 lines (perhaps because it is being viewed on a small screen like a phone) then the text will overlap with the elements below it. On the other hand, if you give the div a line-height and the text grows to 2 lines, the div will expand (assuming you don't also give the div a height).

* display:none means that the tag in question will not appear on the page at all (although you can still interact with it through the dom). There will be no space allocated for it between the other tags.

* visibility:hidden means that unlike display:none, the tag is not visible, but space is allocated for it on the page. The tag is rendered, it just isn't seen on the page.
  http://jsfiddle.net/burhans/ZVgJj/

  https://dev.to/prashantandani/quick-guide-to-css-units-px-em-rem-4lic

  https://www.youtube.com/watch?v=-GR52czEd-0

| px                                                                  | %                                    | vh / vw                          |
| ------------------------------------------------------------------- | ------------------------------------ | -------------------------------- |
| pixel is of absolute width, it will be same no matter where defined | % is based out of its parent element | 1vh = 1/100 of total screen size |

- rem is based put of root element
- em is based to near parent element

| pseudo class                                 | pseudo elements                                                 |
| -------------------------------------------- | --------------------------------------------------------------- |
| :                                            | ::                                                              |
| active, blank,checked,hover,focus, nth child | before, after, first line, first letter                         |
| active, blank,checked,hover,focus            | can be aplied to DOM elements with closing tags ie div,span etc |

> specificity

- Start at 0, add 1000 for style attribute, add 100 for each ID, add 10 for each attribute, class or pseudo-class, add 1 for each element name, tag name or pseudo-element.

```
A: h1
B: #content h1
C: <div id="content"><h1 style="color: #ffffff">Heading</h1></div>

The specificity of A is 1 (one element)
The specificity of B is 101 (one ID reference and one element)
The specificity of C is 1000 (inline styling)

Since 1 < 101 < 1000, the third rule (C) has a greater level of specificity, and therefore will be applied.
```
- One common use for display: inline-block is to display list items horizontally instead of vertically
### JS

**ES2021**

- replaceAll

```
const fruits = '🍎+🍐+🍓+';
const fruitsWithBanana = fruits.replaceAll('+', '😇');
console.log(fruitsWithBanana); //🍎😇🍐😇🍓😇

```

- Logical assignment operator

```
a ||= b
// Equivalent to:
a || (a = b);

a &&= b
// Equivalent to:
a && (a = b);
```

- Numeric separators

```const amount = 12345_00;  // 12,345 (1234500 cents, apparently)
const amount = 123_4500;  // 123.45 (4-fixed financial)
const amount = 1_234_500; // 1,234,500
```

**How JS works**

1. Everything inside JS happens in Execution context.
2. JS is synchronous single threaded language which means JS only execute one line at a time maintaing the order.
3. Inside EC we have two phase

- Memory creation(Variable environment) - allocates memory to all variables and function. Here the special keyword _undefined_ is assigned to variables declared using var keyword. For functions whole code is being assigned. Values are assigned in key value pair.
- Code Execution(Thread of execution) - Here JS skims through the code and work accordingly

4.  Wnenever we invoke a function EC is created.
5.  Call stack is the stack of EC.
6.  Global EC is created as soon as program is run.
7.  As soon as EC is created it is pushed into stack.
8.  As soon as EC is deleted it is popped out from stack.

**chaining assignments**

```
let a, b, c;

a = b = c = 2 + 2;

c = 2 + 2;
b = c;
a = c;
```

**copy objects**

```

const person = {
firstName: 'John',
lastName: 'Doe'
};

// using spread ...
let p1 = {
...person
};

// using Object.assign() method
let p2 = Object.assign({}, person);

// using JSON
let p3 = JSON.parse(JSON.stringify(person));

```

- Both spread (...) and Object.assign() perform a shallow copy while the JSON methods carry a deep copy.

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

```

- The **Object.freeze()** method freezes an object. A frozen object can no longer be changed; freezing an object prevents new properties from being added to it, existing properties from being removed.

```

const obj = {
prop: 42
};

Object.freeze(obj);

obj.prop = 33;
// Throws an error in strict mode

console.log(obj.prop);
// expected output: 42

```

- The Object.seal() method seals an object, preventing new properties from being added to it and marking all existing properties as non-configurable. Values of present properties can still be changed as long as they are writable.

```

const object1 = {
property1: 42
};

Object.seal(object1);
object1.property1 = 33;
console.log(object1.property1);
// expected output: 33

delete object1.property1; // cannot delete when sealed
console.log(object1.property1);
// expected output: 33

```

**Type coercion**

https://www.freecodecamp.org/news/js-type-coercion-explained-27ba3d9a2839/

- Type coercion is the process of converting value from one type to another (such as string to number, object to boolean, and so on).

_When a developer expresses the intention to convert between types by writing the appropriate code, like Number(value), it’s called explicit type coercion (or type casting)._

_Since JavaScript is a weakly-typed language, values can also be converted between different types automatically, and it is called implicit type coercion. It usually happens when you apply operators to values of different types, like
1 == null, 2/’5', null + new Date(), or it can be triggered by the surrounding context, like with if (value) {…}, where value is coerced to boolean._

_One operator that does not trigger implicit type coercion is ===, which is called the strict equality operator. The loose equality operator == on the other hand does both comparison and type coercion if needed_

**Promises**

https://medium.com/javascript-scene/master-the-javascript-interview-what-is-a-promise-27fc71e77261

- Promises are one of the ways we can deal with asynchronous operations in JavaScript.
- A promise is an object which can be returned synchronously from an asynchronous function. It will be in one of 3 possible states:

1. Fulfilled: onFulfilled() will be called (e.g., resolve() was called)
2. Rejected: onRejected() will be called (e.g., reject() was called)
3. Pending: not yet fulfilled or rejected

- The main difference between Callback Functions and Promises is that we attach a callback to a Promise rather than passing it.

```

const wait = time => new Promise(resolve => setTimeout(resolve, time));

wait(3000).then(() => console.log("Hello"));

```

Callback hell

```

firstRequest(function(response) {
secondRequest(response, function(nextResponse) {
thirdRequest(nextResponse, function(finalResponse) {
console.log('Final response: ' + finalResponse);
}, failureCallback);
}, failureCallback);
}, failureCallback);

```

with promise

```

firstRequest()
.then(function(response) {
return secondRequest(response);
}).then(function(nextResponse) {
return thirdRequest(nextResponse);
}).then(function(finalResponse) {
console.log('Final response: ' + finalResponse);
}).catch(failureCallback);

```

Promise with reject and resolve

```

let myPromise = new Promise((resolve, reject) => {
let condition;
if(condition is met){
resolve('Success')
} else {
reject ('Rejection')
}
})

myPromise.then(
(message)=>{console.log(message)
}).catch((error)=>{
console.log(error)
})

```

- async ensures that the function returns a promise.
- The keyword await makes JavaScript wait until that promise settles and returns its result.
- We may get this error if we forget to put async before a function. As stated earlier, await only works inside an async function.

* Promise.reject() returns a rejected promise.
* Promise.resolve() returns a resolved promise.
* Promise.race() takes an array (or any iterable) and returns a promise that resolves with the value of the first resolved promise in the iterable, or rejects with the reason of the first promise that rejects.
* Promise.all() takes an array (or any iterable) and returns a promise that resolves when all of the promises in the iterable argument have resolved, or rejects with the reason of the first passed promise that rejects.

**Event propagation**

https://medium.com/@marjuhirsh/event-propagation-event-delegation-7d3db1baf02a#:~:text=Event%20delegation%20takes%20advantage%20of,event%20listeners%20to%20specific%20nodes.&text=If%20a%20page%20would%20have,up%20a%20lot%20of%20memory.

Event propagation happen in 3 phases

1. Capturing
2. Target
3. Bubbling

there are two types of Event propagation

- Event bubbling (Goes from child to parent to grandparent, used by microsoft)
- Event capturing (Goes from grandparent to parent to child, used by netscape)
- If it’s false or omitted, then the handler is set on the bubbling phase.
- If it’s true, then the handler is set on the capturing phase.

```

document.querySelector('#button1).addEventListener('click', (e) => {
console.log('triggered)
}, true)

```

##### Event delegation

- Event delegation takes advantage of event propagation and so, allows the event listener to be set on a parent element.
- The blur, focus, load and unload events don’t bubble like other events.

**Chaining on conditional operator**

```

function dummy(param){
return condition1 ? value1
: condition2 ? value2
: condition3 ? value 3
: value4;
}

//same as
function dummy(param){
if(condition1){return value1;}
else if(condotion2){return value2};
else if(condotion3){return value3};
else {return value4}
}

```

**Call bind and apply**

- call and apply are used for function borrowing.
- We can borrow function from one object and use it with data of another object.

```

let obj1 = {
"fname" : "amnah,
"lname" : "khatun"
}

function printFullName(greet){
console.log(this.fname + this.lname + greet);
}

let obj2 = {
"fname" : "elon,
"lname" : "musk"
}

printFullName.call(obj1, "Hi")
printFullName.call(obj2, "Hello")
printFullName.apply(obj2, ["Hello")]

1st argument is reference to this
rest argument are parameter to function

- call and apply directly invokes the method

- bind returns the copy of the method which can be called later.
  let x = printFullName.bind(obj2, "Hola")
  -bind returns a function which can be invoked later

we can call bind using currying and closure

let add = function(a,b){
return a + b;
}

let addTwo = add.bind(this,2)
let addThree = add.bind(this,3)

```

**Hoisting**
Hoisting is a phenomenon where we can access variables and functions before initializig it.

```

Lexical environment = local memory + lexical env of its parent

```

- lexical means heirarchy or in sequence
- inner function is lexically inside outer function

**Scope**

var - refers to same memory location
var b = 100;
{
var b =10;
console.log(b) ==> 10
}
console.log(b) ==> 10
shadows and update the global variable

let b = 200
{
let b = 20;
console.log(b) ==> 20 [Block memory space]
}
console.log(b) ==> 200 [script memory space]
let & const are stored in different memory location

![Screenshot](scope_chain.jpeg)

**closures**

- closure is function bundled together with its lexical environment.
- functions even after being returned remember their scope because of closure.
- function remembers the reference to the variable.

Use of closure

- Currying
- encapsulation
- memoize and once
- setTimeouts

**Currying**

- Currying is a technique of evaluating a function with multiple arguments into sequence of function with single/multiple argument.

https://codesandbox.io/s/css-html-flexbox-1jshh?file=/src/index.js

- Arrow functions don’t redefine the value of _this_ within their function body.

https://frontarm.com/james-k-nelson/when-to-use-arrow-functions/

**custom MAP method**

```

const arr = ["1","2","3"];
Array.prototype.myMap = function (cb){
let newArr = [];
for(let arr of this){
newArr.push(cb(arr))
}
return newArr;
}
arr.myMap((item) => console.log(item \* 2))

```

**custom REDUCE method**

```

Array.prototype.myReduce = function(callback, value) {
let a = this;
a.forEach(item => {
value = value !== undefined ? callback(value, item) : item;
});
return value;
};
let x1 = [1, 2, 3].myReduce(function(a, b) {
return a + b;
});
console.log(x1);

```

https://www.toptal.com/javascript/interview-questions

- factorial
  `console.log((function f(n){return ((n > 1) ? n * f(n-1) : n)})(10));`

> delete

> The code above will output `5` as output. When we used `delete` operator for deleting an array element then, the array length is not affected by this. This holds even if you deleted all elements of an array using `delete` operator.
> So when delete operator removes an array element that deleted element is no longer present in the array. In place of value at deleted index undefined x 1 in chrome and undefined is placed at the index.

```
Number + Number -> Addition
Boolean + Number -> Addition
Boolean + Boolean -> Addition
Number + String -> Concatenation
String + Boolean -> Concatenation
String + String -> Concatenation
```

### React

**props vs state**
| Props | state |
| ---- | ---------------- |
| Props are read only (immutable) |State can be modified using setState() |
| Props are used to pass data to components |State are maintained inside a component |

- React uses unidirectional data flow. Data can be passed from parent to child.
- Props can pass functions that may manipulate state. We can store the state in the parent and allow its child to use and manipulate the state.

- Difference between default export and named export.
- With Named export we can have multiple export in a single file.
- With default export we can have only one export in a single file.
- The naming of import is completely independent in default export and we can use any name we like.

**HOC**

https://codesandbox.io/s/a-simple-higher-order-component-forked-lk8gq?file=/index.js

- A HOC takes a component as input parameter and returns a new component.
- We don’t modify or mutate the component. We create new ones.
- A HOC is used to compose components for code reuse.
- A HOC is a pure function. That means it has no side effects. It only returns a new component.

```

const Hello = ({name}) => <h1>Hello {name}</h1>

function simpleHOC (WrappedComponent){
return class extends React.Component {
render(){
<WrappedComponent {...props}/>
}
}
}

const NewComponent = simpleHOC(Hello);

const App(){
<NewComponent name ="Hello" >
}

```

- Reuse component logic

```

const EnhancedComponent = higherOrderComponent(WrappedComponent);

```

https://www.smashingmagazine.com/2020/06/higher-order-components-react/

Eg of HOC

- PROVIDE COMPONENTS WITH SPECIFIC STYLING

#### Hooks

`const [count, setCount] = useState(0);`

- It combines the componentDidMount, componentDidUpdate and componentWillUnmount.

- To run the useEffect on first render and on every update, no need to pass 2nd argument.
- To call the method only when something changes, pass the second argument.
- To mimic componentWillUnmount, useEffect may return a function that cleans up after it.
- We can have mutiple effects in the same component.

> useCallback and useMemo

- useCallback and useMemo both expect a function and an array of dependencies. The difference is that useCallback returns its function when the dependencies change while useMemo calls its function and returns the result.

https://medium.com/@jan.hesters/usecallback-vs-usememo-c23ad1dc60

### Redux

**core concept of redux**

- Single source of truth.
- State is read only(state can only be changed by dispatching action, and actions are objects).
- Pure reducers(reducers are pure function which based on the action return the updated state. Reducers cant modify the state they return the updated state object)

### Design question and WEB

**Server sent events(SSE)**

- Server Sent Events are a standard allowing browser clients to receive a stream of updates from a server over a HTTP connection without resorting to polling. Unlike WebSockets, Server Sent Events are a one way communications channel - events flow from server to client only.

- You might consider using Server Sent Events when you have some rapidly updating data to display, but you don’t want to have to poll the server. Examples might include displaying the status of a long running business process, tracking stock price updates, or showing the current number of likes on a post on a social media network.

https://www.geeksforgeeks.org/what-is-web-socket-and-how-it-is-different-from-the-http/

- HTTP can run on the top of any reliable connection-oriented protocol such as TCP, SCTP. When a client sends HTTP request to the server, a TCP connection is open between the client and server and after getting the response the TCP connection gets terminated, each HTTP request open separate TCP connection to the server, for e.g. if client send 10 requests to the server the 10 separate HTTP connection will be opened. and get closed after getting the response/fallback.

Service worker

- In simple and plain words, it’s a script that browser runs in the background and has whatsoever no relation with web pages or the DOM, and provide out of the box features. It also helps you cache your assets and other files so that when the user is offline or on slow network.

Some of these features are proxying network requests, push notifications and background sync. Service workers ensure that the user has a rich offline experience.

Web worker

- Web Workers are a simple means for web content to run scripts in background threads. The worker thread can perform tasks without interfering with the user interface. In addition, they can perform I/O using XMLHttpRequest (although the responseXML and channel attributes are always null) or fetch (with no such restrictions).

`performance.now()`

**singleton design pattern**

- The singleton pattern is an often used JavaScript design pattern. It provides a way to wrap the code into a logical unit that can be accessed through a single variable. The Singleton design pattern is used when only one instance of an object is needed throughout the lifetime of an application. In JavaScript, Singleton pattern have many uses, they can be used for NameSpacing, which reduce the number of global variables in your page (prevent from polluting global space), organizing the code in a consistent manner, which increase the readability and maintainability of your pages.

- There are two important points in the traditional definition of Singleton pattern:

- There should be only one instance allowed for a class and
  We should allow global point of access to that single instance

### DS and ALGO

> Big O Notation

![Screenshot](bigO.png)

- `O(n) --> Linear time`
- `O(1) --> Constant time`
- `O(n^2) --> Quadratic time`

**Array**

```
let arr = ["😀", "😅", "😂", "🤣"];
arr.push("😍");
["😀", "😅", "😂", "🤣", "😍"]
---
arr.pop();
["😀", "😅", "😂"]
---
arr.shift();
["😅", "😂", "🤣"]
---
arr.unshift("😍");
["😍", "😀", "😅", "😂", "🤣"]
```

- push() --> push element at the end --> O(1)
- pop() --> remove element from the end --> O(1)
- shift() --> remove element from start --> O(n)
- unshift() --> add element at the start --> O(n)

_slice does not affect original array_
`array.slice(start, end)`

```
let arr = ["😀", "😅", "😂", "🤣"];
let temp = arr.slice(1,3);
console.log(arr); --> ["😀", "😅", "😂", "🤣"]
console.log(temp); --> ["😅", "😂"]
```

_splice delete or update value in an array_

> `array.splice(start, deleteCount, newElem1, newElem2, ..., newElemN)`


