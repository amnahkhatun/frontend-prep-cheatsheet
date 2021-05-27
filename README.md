# frontend-notes

# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

Normal text

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

# React Tech round 1

### CSS

- https://rananitesh99.medium.com/five-css-interview-questions-you-will-be-asked-every-time-72fff69ecde

### JS

##### Event propagation

https://medium.com/@marjuhirsh/event-propagation-event-delegation-7d3db1baf02a#:~:text=Event%20delegation%20takes%20advantage%20of,event%20listeners%20to%20specific%20nodes.&text=If%20a%20page%20would%20have,up%20a%20lot%20of%20memory.

Event propagation happen in 3 phases

1. Capturing
2. Target
3. Bubbling

there are two types og Event propagation

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

###React

**props vs state**
| Props | state |
| ---- | ---------------- |
| Props are read only (immutable) |State can be modified using setState() |
| Props are used to pass data to components |State are maintained inside a component |

- React uses unidirectional data flow. Data can be passed from parent to child.
- Props can pass functions that may manipulate state. We can store the state in the parent and allow its child to use and manipulate the state.

####Hooks
It combines the componentDidMount, componentDidUpdate and componentWillUnmount.

- To run the useEffect on first render and on every update, no need to pass 2nd argument.
- To call the method only when something changes, pass the secong argument.
- To mimic componentWillUnmount, useEffect may return a function that cleans up after it.
- We can have mutiple effects in the same component.

###Redux

**core concept of redux**

- Single source of truth.
- State is read only(state can only be changed by dispatching action, and actions are objects).
- Pure reducers(reducers are pure function which based on the action return the updated state. Reducers cant modify the state they return the updated state object)
