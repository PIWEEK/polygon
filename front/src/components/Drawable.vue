<template>
  <div class="ui four column grid">
    <div class="four column row">
      <div class="column">
        <h3>Actions:</h3>
        <div v-if="processing">
          <div class="ui active inline loader"></div> Processing
        </div>
        <div v-else>
          <button class="ui button" @click="submitPoints" :disabled="processing">
            Submit points
          </button>
          <button class="ui button" @click="clearPoints" :disabled="processing">Clear points</button>
        </div>

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
        <h3>CurrentResult ({{ polygonCounter }})</h3>
        <canvas
          ref="outputCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: resultPoints, settings: settings}"
        ></canvas>
      </div>

      <div  class="column points" v-bind:style="{ height: settings.canvasHeight + 55 + 'px' }">
        <h3>Points (data)</h3>
        <div class="ui form">
          <div class="field">
            <textarea v-model="pointsSummary"></textarea>
          </div>
        </div>
      </div>

    </div>

    <div class="four column row">
      <div class="column">
        <h3>Min perimeter ({{ minPerimeter }})</h3>
        <canvas
          ref="minPerimeterCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: minPerimeterPoints, settings: settings}"
        ></canvas>
      </div>

      <div class="column">
        <h3>Max perimeter ({{ maxPerimeter }})</h3>
        <canvas
          ref="maxPerimeterCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: maxPerimeterPoints, settings: settings}"
        ></canvas>
      </div>

      <div class="column">
        <h3>Min area ({{ minArea }})</h3>
        <canvas
          ref="minAreaCanvas"
          :width="settings.canvasWidth"
          :height="settings.canvasHeight"
          v-insert-sides="{points: minAreaPoints, settings: settings}"
        ></canvas>
      </div>

      <div class="column">
        <h3>Max area ({{ maxArea }})</h3>
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
      polygonCounter: 0,
      resultPoints: [],
      minPerimeterPoints: [],
      maxPerimeterPoints: [],
      minAreaPoints: [],
      maxAreaPoints: [],
      minPerimeter: Number.MAX_SAFE_INTEGER,
      maxPerimeter: Number.MIN_SAFE_INTEGER,
      minArea: Number.MAX_SAFE_INTEGER,
      maxArea: Number.MIN_SAFE_INTEGER,
      processing: false
    }
  },
  computed: {
    pointsSummary: {
      get () {
        return this.points.map((e) =>
          e.x + ', ' + e.y
        ).join('\n')
      },
      set (value) {
        this.points = value.split('\n').map((e) => {
          const sp = e.replace(/ /g, '').split(',')
          console.log(sp)
          return {
            x: parseInt(sp[0]),
            y: parseInt(sp[1])
          }
        })
      }
    }
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
        this.polygonCounter = 0
        this.processing = true
        const ws = new WebSocket('ws://127.0.0.1:5000/polygons/' + uuid)
        ws.onmessage = (event) => {
          this.polygonCounter += 1
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
        ws.onclose = (event) => {
          this.processing = false
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
      this.polygonCounter = 0
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
    width: 150px;
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
