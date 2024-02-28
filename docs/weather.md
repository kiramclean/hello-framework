# Weather report

```js
const forecast = FileAttachment("./data/forecast.json").json();
```

```js
import {temperaturePlot} from "./components/temperaturePlot.js";
```

## Loaded from JS data loader

<div class="grid grid-cols-1">
  <div class="card">${resize((width) => temperaturePlot(forecast, {width}))}</div>
</div>

## Loaded from babashka data loader

```js
const forecastbb = FileAttachment("./data/forecastbb.json").json();
```

```js
display(forecastbb)
```
