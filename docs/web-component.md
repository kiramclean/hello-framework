# Attempt to use a web component within Observable Framework

Is this working?

<details>
  <summary>Click me</summary>
  This text is not visible by default.
</details>


<!-- ```js -->
<!-- import {html} from "npm:htl"; -->
<!-- ``` -->

<!-- ```js -->
<!-- html`My favorite band is “${"dollar&pound"}” not “dollar&pound”!` -->
<!-- ``` -->

<!-- ```js -->
<!-- html`<button data-count="0" onclick=${({currentTarget: button}) => { -->
<!--   const count = button.dataset.count = +button.dataset.count + 1; -->
<!--   button.textContent = `${count} click${count === 1 ? "" : "s"}`; -->
<!-- }}>Click me!</button>` -->
<!-- ``` -->

```js
MyElement = {
  class MyElement extends lit.LitElement {
    constructor() {
      super();
      this.mood = "sad";
    }
    static get properties() { return { mood: {type:"String"} }}

    render() {
      return lit.html`<style> .mood { color: green; } </style>Web Components are <span class="mood">${this.mood}</span>!`;
    }
  }
  if(!window.customElements.get('my-element')) {
    window.customElements.define('my-element', MyElement)
    console.log("registered");
  }
  return MyElement
}
```

```js
 html`<my-element mood="happy"></my-element>`
```


```js
const developerRecords = FileAttachment("./data/developer-records.csv").csv({typed: true});
```



```sql
SELECT * FROM developer_records LIMIT 5
```

```js
display(developerRecords)
```

```js
Inputs.table(developerRecords)
```

```js
Inputs.table(launches)
```



### Is there something to investigate here? Let’s check the OECD Definition of Gender Pay Gap

The gender wage gap is defined as the difference between median earnings of men and women relative to median earnings of men [1].

We can implement this definition in our context of software developer salaries in the US.

```
```
