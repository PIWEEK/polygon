<template>
  <div class="ui four column grid">
    <div class="four column row">
      <div class="column">
        <h3>Actions:</h3>
        <button @click="submitPoints">submit points</button>
        <button @click="clearPoints">clear points</button>

        <h3>Properties:</h3>
        <ul>
          <li>
            <label>Width: </label>
            <input type="number" v-model.number="settings.canvasWidth">
          </li>
          <li>
            <label>Height: </label>
            <input type="number" v-model.number="settings.canvasHeight">
          </li>
          <li>
            <label>Point Size:</label>
            <input type="number" v-model.number="settings.pointSize">
          </li>
          <li>
            <label>Cycles:</label>
            <input type="number" v-model.number="settings.cycles">
          </li>
        </ul>
      </div>

      <div class="column">
        <h3>Draw</h3>
        <canvas
          ref="inputCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-points="{points: points, settings: settings}"

          @mousedown="mousedown"
          @mouseup="mouseup"
          @mousemove="mousemove"
        ></canvas>
      </div>

      <div class="column">
        <h3>CurrentResult</h3>
        <canvas
          ref="outputCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: resultPoints, settings: settings}"
        ></canvas>
      </div>

      <div  class="column points" v-bind:style="{ height: settings.canvasHeight + 55 + 'px' }">
        <h3>Points (data)</h3>
        <table  class="ui selectable table collapsing">
          <thead>
            <tr><th>N°</th><th>X</th><th>Y</th><th>Remove</th></tr>
          </thead>
          <tbody>
            <tr v-for="(point, index) in points" :key="point">

              <td>{{index + 1}}</td>
              <td><input v-model.number="point.x" type="number"/></td>
              <td><input v-model.number="point.y" type="number"/></td>
              <td><button @click="removePoint(index)">X</button></td>
              </tr>
          </tbody>
        </table>
      </div>

    </div>

    <div class="four column row">
      <div class="column">
        <h3>Min perimeter</h3>
        <canvas
          ref="minPerimeterCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: minPerimeterPoints, settings: settings}"
        ></canvas>
      </div>

      <div class="column">
        <h3>Max perimeter</h3>
        <canvas
          ref="maxPerimeterCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: maxPerimeterPoints, settings: settings}"
        ></canvas>
      </div>

      <div class="column">
        <h3>Min area</h3>
        <canvas
          ref="minAreaCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: minAreaPoints, settings: settings}"
        ></canvas>
      </div>

      <div class="column">
        <h3>Max area</h3>
        <canvas
          ref="maxAreaCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: maxAreaPoints, settings: settings}"
        ></canvas>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  mounted () {
    this.canvas = this.$refs.inputCanvas
    this.context = this.canvas.getContext('2d')
  },
  data () {
    return {
      canvas: {},
      context: {},
      settings: {
        canvasHeight: 300,
        canvasWidth: 300,
        pointSize: 2,
        strokeStyle: 'darkgrey',
        fillStyle: 'rgb(200,0,0)',
        cycles: 500
      },
      dragMode: false,
      overPoint: {},
      points: [],
      cycles: 500,
      resultPoints: [],
      minPerimeterPoints: [],
      maxPerimeterPoints: [],
      minAreaPoints: [],
      maxAreaPoints: [],
      minPerimeter: Number.MAX_SAFE_INTEGER,
      maxPerimeter: Number.MIN_SAFE_INTEGER,
      minArea: Number.MAX_SAFE_INTEGER,
      maxArea: Number.MIN_SAFE_INTEGER
    }
  },
  computed: {

  },
  directives: {
    insertPoints: function (canvasElement, binding) {
      const points = JSON.parse(JSON.stringify(binding.value.points))
      const settings = binding.value.settings
      const context = canvasElement.getContext('2d')
      context.clearRect(0, 0, settings.canvasWidth, settings.canvasHeight)

      for (let point of points) {
        context.beginPath()
        context.moveTo(point.x - settings.pointSize, point.y - settings.pointSize)
        context.lineTo(point.x - settings.pointSize, point.y + settings.pointSize)
        context.lineTo(point.x + settings.pointSize, point.y + settings.pointSize)
        context.lineTo(point.x + settings.pointSize, point.y - settings.pointSize)
        context.lineTo(point.x - settings.pointSize, point.y - settings.pointSize)
        context.strokeStyle = settings.strokeStyle
        context.stroke()
      }
    },
    insertSides: (canvasElement, binding) => {
      const settings = binding.value.settings
      const context = canvasElement.getContext('2d')
      context.clearRect(0, 0, settings.canvasWidth, settings.canvasHeight)

      const points = JSON.parse(JSON.stringify(binding.value.points))
      if (!points[0]) {
        return
      }
      context.beginPath()
      context.moveTo(points[0][0], points[0][1])
      for (let point of points.slice(1)) {
        context.lineTo(point[0], point[1])
      }
      context.closePath()
      context.fillStyle = settings.fillStyle
      context.fill()
      context.strokeStyle = settings.strokeStyle
      context.stroke()
    }
  },
  methods: {
    removePoint (index) {
      this.points.splice(index, 1)
    },
    matchPoints (checkPoint, mousePoint) {
      if (mousePoint.x > checkPoint.x + this.settings.pointSize) {
        return false
      }

      if (mousePoint.x < checkPoint.x - this.settings.pointSize) {
        return false
      }

      if (mousePoint.y > checkPoint.y + this.settings.pointSize) {
        return false
      }

      if (mousePoint.y < checkPoint.y - this.settings.pointSize) {
        return false
      }
      return true
    },

    submitPoints () {
      this.resetCalculatedData()
      const payload = {
        points: this.points,
        cycles: this.cycles
      }
      this.$http.post('http://127.0.0.1:5000/', payload).then((response) => {
        const uuid = response.data.uuid
        const ws = new WebSocket('ws://127.0.0.1:5000/polygons/' + uuid)
        ws.onmessage = (event) => {
          const data = JSON.parse(event.data)
          const area = data.properties.area
          const perimeter = data.properties.perimeter

          if (perimeter < this.minPerimeter) {
            this.minPerimeter = perimeter
            this.minPerimeterPoints = data.vertex
          }

          if (perimeter > this.maxPerimeter) {
            this.maxPerimeter = perimeter
            this.maxPerimeterPoints = data.vertex
          }

          if (area < this.minArea) {
            this.minArea = area
            this.minAreaPoints = data.vertex
          }

          if (area > this.maxArea) {
            this.maxArea = area
            this.maxAreaPoints = data.vertex
          }

          this.resultPoints = data.vertex
        }
      })
    },
    resetCalculatedData () {
      this.resultPoints = []
      this.minPerimeterPoints = []
      this.maxPerimeterPoints = []
      this.minAreaPoints = []
      this.maxAreaPoints = []
      this.minPerimeter = Number.MAX_SAFE_INTEGER
      this.maxPerimeter = Number.MIN_SAFE_INTEGER
      this.minArea = Number.MAX_SAFE_INTEGER
      this.maxArea = Number.MIN_SAFE_INTEGER
    },
    clearPoints () {
      this.points = []
      this.resetCalculatedData()
    },
    getMousePos (evt) {
      // https://stackoverflow.com/questions/17130395/real-mouse-position-in-canvas
      var rect = this.context.canvas.getBoundingClientRect()
      return {
        x: parseInt((evt.clientX - rect.left) / (rect.right - rect.left) * this.settings.canvasWidth),
        y: parseInt((evt.clientY - rect.top) / (rect.bottom - rect.top) * this.settings.canvasHeight)
      }
    },
    mouseup (event) {
      let mouseUpPoint = this.getMousePos(event)
      if (this.dragMode && this.overPoint) {
        this.dragPoint(this.overPoint, mouseUpPoint)
        this.dragMode = false
      } else {
        this.addNode(mouseUpPoint)
      }
    },
    dragPoint (selectedPoint, newPoint) {
      this.points.map((pointToMove) => {
        if (pointToMove.x === selectedPoint.x && pointToMove.y === selectedPoint.y) {
          pointToMove.x = newPoint.x
          pointToMove.y = newPoint.y
        }
      })
    },
    mousemove (event) {
      let point = this.getMousePos(event)
      // this.selectedPoint(point)
      if (this.dragMode && this.overPoint) {
        this.dragPoint(this.overPoint, point)
      }
    },
    mousedown (event) {
      let point = this.getMousePos(event)
      if (this.isMouseOnNode(point)) {
        // point selected
        this.dragMode = true
      } else {
        this.dragMode = false
      }
    },
    isMouseOnNode (point) {
      return this.selectedPoint(point) !== null
    },
    selectedPoint (point) {
      for (var iteratedPoint of this.points) {
        if (this.matchPoints(iteratedPoint, point)) {
          this.overPoint = iteratedPoint
          return iteratedPoint
        }
      }
      this.overPoint = null
      return null
    },
    addNode (point) {
      this.points.push(point)
    }
  }
}
</script>
<style>
  h3 {
    padding-top: 15px;
  }
  input {
    width: 50px;
  }
  label {
    display:inline-block;
    width: 70px;
  }
  canvas {
    border:1px solid #bbb;
  }
  .grid-container {
    margin-left: 15px;
    display: grid;
    height: 100%;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-template-rows: 1fr 1fr;
    grid-template-areas: ". . . ." ". . . .";
  }

  .points {
    overflow-y: scroll;
  }
</style>
