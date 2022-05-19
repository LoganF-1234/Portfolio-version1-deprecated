//BFS Web App - first web dev app using javascript in any substantial way. Apologies or messy code and sub-optimal solutions
import { gameTiles, visited, path, maze1, logan, random, cross, maze2, thermopylae } from './paths.js'  //import all arrays from paths.js
const gamePaths = [maze1, logan, random, cross, maze2, thermopylae]
export let currentPath = 0 // do not want to repeat a path, used in randomObstacles()
const gameBoard = document.querySelector('.game-container')
const gameTilesNum = gameTiles.length
let toggling = false

// set up the grid style for the game container
const intitializeBoard = () => {
  const width  = window.innerWidth || document.documentElement.clientWidth || 
  document.body.clientWidth;
  const height = window.innerHeight|| document.documentElement.clientHeight|| 
  document.body.clientHeight;

  const gameContainer = document.querySelector('.game-container')
  if(width <= 913){
    if(height <= 800) {
      gameContainer.style.gridTemplateColumns = `repeat(${gameTilesNum}, 10px)`
    } else {
      gameContainer.style.gridTemplateColumns = `repeat(${gameTilesNum}, 15px)`
    }
  } else {
    gameContainer.style.gridTemplateColumns = `repeat(${gameTilesNum}, 20px)`
  }
}
intitializeBoard()

// functions for making the draw work
const enableToggle = () => {
  toggling = true
}

const disableToggle = () => {
  toggling = false
}

const toggle = e => {
  if(toggling === false) {
    return;
  }
  e.target.classList.add('red')
  gameTiles[e.target.getAttribute('row')][e.target.getAttribute('column')] = 'red' //set array values to red
}

// create the buttons used for the bfs, assign css attributes and eventListeners
function run() {
  gameBoard.onmousedown = enableToggle

  gameTiles.forEach((gameTileRow, gameTileRowIndex) => {
    gameTileRow.forEach((gameTile, gameTileIndex) =>{
      const tiles = document.createElement('button')
      tiles.setAttribute('id', 'gameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
      tiles.setAttribute('row', gameTileRowIndex)
      tiles.setAttribute('column', gameTileIndex)
      tiles.classList.add('noselect')
      tiles.classList.add('white')
      tiles.onmouseenter = toggle //add drag functionality 
      tiles.addEventListener('mousedown', () => { //click => red
        if(!(tiles.classList.contains('red') )) {
          tiles.classList.add('red')
          gameTiles[gameTileRowIndex][gameTileIndex] = 'red'
        } else { //if already red you can remove by clicking
          tiles.classList.remove('red')
          gameTiles[gameTileRowIndex][gameTileIndex] = ''
        }
      })
      gameBoard.append(tiles)
    })
  })
  gameBoard.onmouseup = disableToggle
  gameBoard.onmouseleave = disableToggle

  
}
run()

// select a random path which is imported froma nother js file. Set gameTiles to this path which is just a prefilled gameTiles array
function randomObstacles() {
  resetBoard()
  const getRandomInt = (max) => { 
    return Math.floor(Math.random() * max)
  }
  let pathNum = getRandomInt(gamePaths.length) // gamePaths is the array of all the different paths/layouts/mazes pulled at start of program from seperate paths.js file
  let randomPath = null
  // if loop makes sure you dont get two of the same path in a row
  if(currentPath == pathNum){
    while(currentPath == pathNum){
      pathNum = getRandomInt(gamePaths.length)
    }
    randomPath = gamePaths[pathNum]
    currentPath = pathNum
  } else {
    randomPath = gamePaths[pathNum]
    currentPath = pathNum
  }
  gameTiles.forEach((gameTileRow, gameTileRowIndex) => { // look through each [row][column] in the randomPath and if the tile is red, make the corresponding tile in the gameTiles array red
    gameTileRow.forEach((gameTile, gameTileIndex) =>{
      if(randomPath[gameTileRowIndex][gameTileIndex] == 'red') {
        const changeTile = document.getElementById('gameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
        changeTile.classList.add('red')
        gameTiles[gameTileRowIndex][gameTileIndex] ='red'
      }
    })
  })
  //console.log(gameTiles)
}


const startNode = document.getElementById('gameRow-0-tile-0')
const endNode = document.getElementById('gameRow-19-tile-19')
startNode.classList.add('start')
endNode.classList.add('end')
gameTiles[0][0] = 'start'
gameTiles[19][19] = 'end'
var help = null
let endBFS = true
let bfsRunTimes = 0
// Breadth First Search in a grid. 
const bfs = async () => {
  bfsRunTimes++
  let moveCount = 0
  let nodesHere = 1
  let nodesThere = 0
  let rowQueue = []  // could have combined rowQueue and columnQueue into one by making an object { row: , column:, }
  let columnQueue = []
  let parentForCell = {}
  endBFS = false
  let rowDirection = [-1, 1, 0, 0]
  let columnDirection = [0, 0, 1, -1]
  let currentKey = ``
  let current = ''
  let key1 = ''
  let startRow = startNode.getAttribute('row')
  let startColumn = startNode.getAttribute('column')
  console.log('running', gameTiles)
  visited[startRow][startColumn] = true
  rowQueue.push(startRow)
  columnQueue.push(startColumn)
  
  while(rowQueue.length > 0){
    var rowPosition = rowQueue.shift()
    var columnPosition = columnQueue.shift()
    //console.log('nodesHere: ', nodesHere)   These were essential in debugging to figure out when to await; described below. 
    //console.log('nodesThere: ', nodesThere)
    currentKey = `${rowPosition}x${columnPosition}`
    current = 'gameRow-'+rowPosition+ '-tile-' + columnPosition
    
    if(gameTiles[rowPosition][columnPosition] == 'end'){
      endBFS = true
      break
    }

    //this next if statement is EXTREMELY IMPORTANT. It ensures that the game colors the correct cells at each step in the bfs. Without the if statement, the while loop will await everytime it is called which we do not want. This is because of the way the checking neighbors works. Everytime we enter into the for loop we only check one cells' neighbors. For a full bfs "iteration" to complete, we need to visit the neighbors of all the currently visited cells who have unvisited neighbors. To do this our program needs to enter the for loop 1 time for each x number of cells with unvisited neighbors. This x is kept track of as the nodesHere variable. The nodesThere variable keeps track of how many nodes in this iteration of the bfs remain to be visited. When they are all visited (ie. nodesThere = 0), we want to color all of them at once (in practice, obviously they are colored at different times but it is within nanoseconds of eachother). To do this we stop the execution of the next iteration of the bfs with the wait below. We can also also switch the colors of nodes compeltely visited here to a different color to show which ones are being visited this iteration and which are already visited in previous iterations.
    if(nodesThere == 0) {
      await waitForSeconds(0.03)
      let yellow = document.querySelectorAll('.yellow') // change color of nodes that were visited in previous iterations
      for(let i = 0; i <yellow.length; i++) {
        let blues  = yellow;
        yellow[i].classList.remove('yellow')
        blues[i].classList.add('dark-gray')
      }

    }

    // explore each neighbor of this current visited cell
    for(let i = 0; i < 4; i++) {
      let newRow = parseInt(rowPosition + rowDirection[i])
      let newColumn = parseInt(columnPosition + columnDirection[i])

      if(newRow < 0 || newColumn <0){
        continue
      }
      if(newRow >= 20 || newColumn >= 20){
        continue
      }

      key1 = `${newRow}x${newColumn}`

      if(key1 in parentForCell) {
        continue
      }

      if(visited[newRow][newColumn]){
        continue
      }
      
      if(gameTiles[newRow][newColumn] == 'red') {
        continue
      }

      parentForCell[key1] = {
        key: currentKey,
        cell: current
      }
        
      rowQueue.push(newRow)
      columnQueue.push(newColumn)
      visited[newRow][newColumn] = true
      const changeColorTile = document.getElementById('gameRow-'+newRow+ '-tile-' + newColumn)
      changeColorTile.classList.add('yellow')
      nodesThere++
    }
    
    nodesHere--
    if(nodesHere == 0) {
      nodesHere = nodesThere
      nodesThere = 0
      moveCount++
    }

  }
  // This can be seen as a seprate function where we are retracing the parentNodes of the final solution (ie this creates the final path you see in the code)
  const path = []
  let currentKey2 = `${rowPosition}x${columnPosition}`
  let current2 = 'gameRow-'+rowPosition+ '-tile-' + columnPosition
  while(current2 != startNode.getAttribute('id')){
    path.push(current2)

    const { key, cell } = parentForCell[currentKey2]
    current2 = cell
    currentKey2 = key
  }
  
  path.forEach((cell,i) => {
    help = setTimeout(()=> { // animate final path
      document.getElementById(cell).classList.add('blue1')
    }, i* 10)
  })

  if(endBFS) {
    console.log('end', moveCount)
    return moveCount
  }
  return -1
}

const runBFS = document.getElementById('runbfsButton')
runBFS.addEventListener('click', () => {
  if(bfsRunTimes < 1) {
    bfs()
  } else {
    console.log('need to reset board')
  }
 
})

const resetButton = document.getElementById('resetboardButton')
resetButton.addEventListener('click', () => {
  clearTimeout(help)
  resetBoard()
  //console.log(visited)
})


const resizeEvent = window.addEventListener('resize', () => {
  intitializeBoard()
})

const randomObstaclesButton = document.getElementById('randomobstaclesButton')
randomObstaclesButton.addEventListener('click', () => {
  if(endBFS == true) {
    randomObstacles()
  }
})

// reset the gameTiles board and all the colors on it
const resetBoard = () => {
  if(endBFS == true) {
    //clearTimeout(help)
    gameTiles.forEach((gameTileRow, gameTileRowIndex) => {
      gameTileRow.forEach((gameTile, gameTileIndex) =>{
        const tiles = document.getElementById('gameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
        tiles.classList.remove('yellow', 'red', 'blue1', 'dark-gray')
        gameTiles[gameTileRowIndex][gameTileIndex] = ''
        visited[gameTileRowIndex][gameTileIndex] = false
      })
    })
    gameTiles[0][0] = 'start'
    gameTiles[19][19] = 'end'
    endBFS = true
    bfsRunTimes = 0
  } else {
    console.log('process is still running')
  }
  
}

// code comes from YouTube account ourcade, a video of his helped me figure out how to keep track of the parent nodes for BFS for use in the final path
const waitForSeconds = secs => {
  return new Promise(resolve => {
    setTimeout(resolve,secs *1000)
  })
} 
