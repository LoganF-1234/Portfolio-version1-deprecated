//BFS Web App - first web dev app using javascript in any substantial way. Apologies or messy code and sub-optimal solutions
import { gameTiles, visited, path, maze1, logan, random, cross } from './paths.js'  //import all arrays from paths.js
const gamePaths = [maze1, logan, random, cross]
let currentPath = 0 // do not want to repeat a path, used in randomObstacles()
const gameBoard = document.querySelector('.game-container')
const gameTilesNum = gameTiles.length
let toggling = false

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

function run() {
  gameBoard.onmousedown = enableToggle

  gameTiles.forEach((gameTileRow, gameTileRowIndex) => {
    gameTileRow.forEach((gameTile, gameTileIndex) =>{
      const tiles = document.createElement('button')
      tiles.setAttribute('id', 'gameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
      tiles.setAttribute('row', gameTileRowIndex)
      tiles.setAttribute('column', gameTileIndex)
      tiles.classList.add('noselect')
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
  
}
run()

function randomObstacles() {
  resetBoard()
  const getRandomInt = (max) => {
    return Math.floor(Math.random() * max)
  }
  let pathNum = getRandomInt(gamePaths.length)
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
  gameTiles.forEach((gameTileRow, gameTileRowIndex) => {
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


// variables for use with bfs and explore, if I had just combined them I wouldnt have to initialize all of these here
let nodesHere = 1
let nodesThere = 0
let moveCount = 0
let rowQueue = []
let columnQueue = []
let parentForCell = {}
let endBFS = false
let rowDirection = [-1, 1, 0, 0]
let columnDirection = [0, 0, 1, -1]
let currentKey = ``
let current = ''
let key1 = ''
let startRow = startNode.getAttribute('row')
let startColumn = startNode.getAttribute('column')


const bfs = async () => {
  console.log(gameTiles)
  visited[startRow][startColumn] = true
  rowQueue.push(startRow)
  columnQueue.push(startColumn)
  while(rowQueue.length > 0){
    var rowPosition = rowQueue.shift()
    var columnPosition = columnQueue.shift()
    currentKey = `${rowPosition}x${columnPosition}`
    current = 'gameRow-'+rowPosition+ '-tile-' + columnPosition
    //console.log(current)
    
    if(gameTiles[rowPosition][columnPosition] == 'end'){
      endBFS = true
      break
    }
    explore(rowPosition, columnPosition)
    await waitForSeconds(.005)

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
  //console.log(path)
  
  path.forEach((cell,i) => {
    setTimeout(()=> { //animate final path
      document.getElementById(cell).classList.add('blue1')
    }, i* 10)
  })

  if(endBFS) {
    console.log('end', moveCount)
    return moveCount
  }
  return -1
}

const explore = (row, column) => { //look at all neighbors of current node, making this a seperate function honestly made this much harder and uglier because I needed a ton of   "global" variables
  for(let i = 0; i < 4; i++) {
    let newRow = parseInt(row + rowDirection[i])
    let newColumn = parseInt(column + columnDirection[i])

    
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
    //console.log(parentForCell)

    rowQueue.push(newRow)
    columnQueue.push(newColumn)
    visited[newRow][newColumn] = true
    const changeColorTile = document.getElementById('gameRow-'+newRow+ '-tile-' + newColumn)
    changeColorTile.classList.add('green')
    nodesThere++
  }

}

const runBFS = document.getElementById('runbfsButton')
runBFS.addEventListener('click', () => {
  bfs()
  //console.log(gameTiles)
})

const resetButton = document.getElementById('resetboardButton')
  resetButton.addEventListener('click', () => {
    resetBoard()
    //console.log(visited)
  })

const randomObstaclesButton = document.getElementById('randomobstaclesButton')
randomObstaclesButton.addEventListener('click', () => {
  randomObstacles()
})

const resetBoard = () => {
  gameTiles.forEach((gameTileRow, gameTileRowIndex) => {
    gameTileRow.forEach((gameTile, gameTileIndex) =>{
      const tiles = document.getElementById('gameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
      tiles.classList.remove('green', 'red', 'blue1')
      gameTiles[gameTileRowIndex][gameTileIndex] = ''
      visited[gameTileRowIndex][gameTileIndex] = false
    })
  })
  moveCount = 0
  nodesHere = 1
  nodesThere = 0
  rowQueue = []
  columnQueue = []
  endBFS = false
  gameTiles[0][0] = 'start'
  gameTiles[19][19] = 'end'
  currentKey = ``
  current = ''
  parentForCell = {}
  key1 = ''
}

const intitializeBoard = () => {
  const gameContainer = document.querySelector('.game-container')
  gameContainer.style.gridTemplateColumns = `repeat(${gameTilesNum}, 20px)`
}
intitializeBoard()

const waitForSeconds = secs => {
  return new Promise(resolve => {
    setTimeout(resolve,secs *1000)
  })
}