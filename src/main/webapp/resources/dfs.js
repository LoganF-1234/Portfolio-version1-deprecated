import { dfsTiles, dfsvisited, dfspath, maze1, logan, random, cross, maze2, visited, thermopylae } from './paths.js'  //import all arrays from paths.js
const gamePaths = [maze1, logan, random, cross, maze2, thermopylae]
import { currentPath } from './app.js'
const gameBoard = document.querySelector('.game-container2')
const dfsTilesNum = dfsTiles.length
let toggling = false

const intitializeBoard = () => {
  const width  = window.innerWidth || document.documentElement.clientWidth || 
  document.body.clientWidth;
  const height = window.innerHeight|| document.documentElement.clientHeight|| 
  document.body.clientHeight;

  const gameContainer = document.querySelector('.game-container2')
  if(width <= 913){
    if(height <= 830) {
      gameContainer.style.gridTemplateColumns = `repeat(${dfsTilesNum}, 10px)`
    } else {
      gameContainer.style.gridTemplateColumns = `repeat(${dfsTilesNum}, 15px)`
    }
  } else {
    gameContainer.style.gridTemplateColumns = `repeat(${dfsTilesNum}, 20px)`
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
  dfsTiles[e.target.getAttribute('row')][e.target.getAttribute('column')] = 'red' //set array values to red
}

function run() {
  gameBoard.onmousedown = enableToggle

  dfsTiles.forEach((gameTileRow, gameTileRowIndex) => {
    gameTileRow.forEach((gameTile, gameTileIndex) =>{
      const tiles = document.createElement('button')
      tiles.setAttribute('id', 'dfsgameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
      tiles.setAttribute('row', gameTileRowIndex)
      tiles.setAttribute('column', gameTileIndex)
      tiles.classList.add('noselect')
      tiles.onmouseenter = toggle //add drag functionality 
      tiles.addEventListener('mousedown', () => { //click => red
        if(!(tiles.classList.contains('red') )) {
          tiles.classList.add('red')
          dfsTiles[gameTileRowIndex][gameTileIndex] = 'red'
        } else { //if already red you can remove by clicking
          tiles.classList.remove('red')
          dfsTiles[gameTileRowIndex][gameTileIndex] = ''
        }
      })
      gameBoard.append(tiles)
    })
  })
  gameBoard.onmouseup = disableToggle
  gameBoard.onmouseleave = disableToggle

  
}
run()

function randomObstacles() {
  resetBoard()
  const getRandomInt = (max) => {
    return Math.floor(Math.random() * max)
  }
  let pathNum = getRandomInt(gamePaths.length)
  // we calculate currentPath in the app(bfs).js, we want these to always be the same so the user can compare
  let randomPath = gamePaths[currentPath]
    
  dfsTiles.forEach((gameTileRow, gameTileRowIndex) => {
    gameTileRow.forEach((gameTile, gameTileIndex) =>{
      if(randomPath[gameTileRowIndex][gameTileIndex] == 'red') {
        const changeTile = document.getElementById('dfsgameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
        changeTile.classList.add('red')
        dfsTiles[gameTileRowIndex][gameTileIndex] ='red'
      }
    })
  })
  console.log(dfsTiles)
}


const startNode = document.getElementById('dfsgameRow-0-tile-0')
const endNode = document.getElementById('dfsgameRow-19-tile-19')
startNode.classList.add('start')
endNode.classList.add('end')
dfsTiles[0][0] = 'start'
dfsTiles[19][19] = 'end'

let moveCount = 0
let startRow = startNode.getAttribute('row')
let startColumn = startNode.getAttribute('column')
//row and columnDirection tell the program which neighbors to prioritize, we will look at them inn order of bottom, right, top, left for dfs. Changing this order destroys bfs
//let rowDirection = [1, 0, -1, 0] 
//let columnDirection = [0, 1, 0, -1] 
// below are for interative which needs to check neghbors in opposite direction due to how the stack works
let rowDirection = [0, -1, 0, 1] 
let columnDirection = [-1, 0, 1, 0]
var help = null
// row:column --> 1:0 is bottom of current node, 0:1 is right, -1:0 is top, 0:-1 is left


// DEPRECATED: the below dfs function is a recursive approach to dfs. I was having trouble figuring out how to animate the path of the cells being visited with the await function. For some reason the await function would interrupt the recursive call and remove the current recursvie call from the "stack" and move to the call of the previous neighbor. I am still new to asynchronous functions and could not figure out a solution to this issue. So I decided to do a iterative dfs instead, which is probably better anyway since it more closely mirrors my bfs function.
/*const dfs = async (row, column) => {
  let neighbors = []

  console.log('in dfs row : ' + row + ' column: ' + column)
  let currentPosition = { row: row, column: column }

  if(dfsTiles[row][column] == 'end'){
    endBFS = true
  }

  if(endBFS) {
    console.log('end', moveCount)
    return moveCount
  }

  if(dfsvisited[row][column]){
    return
  }
  dfsvisited[row][column] = true

  if(row != 0 || column != 0) {
    const changeColorTile = document.getElementById('dfsgameRow-'+row+ '-tile-' + column)
    changeColorTile.classList.add('yellow')
  } 

  // similar to bfs, we want to find all the neighbors of this cell, and recursively call the one with highest priority first if it is available, in this case that will be the bottom cell if its univisited as described above in the direction arrays
  for(let i = 0; i < 4; i ++) {
    let newRow = parseInt(parseInt(row) + parseInt(rowDirection[i]))
    let newColumn = parseInt(parseInt(column) + parseInt(columnDirection[i]))
    //console.log(parseInt(columnDirection[i] + column))
    if(newRow < 0 || newColumn <0){
      continue
    }
    if(newRow >= 20 || newColumn >= 20){
      continue
    }
    
    if(dfsvisited[newRow][newColumn]){
      continue
    }
    if(dfsTiles[newRow][newColumn] == 'red') {
      continue
    }

    let help = { row: newRow, column: newColumn}
    neighbors.push(help)
    
  }
  console.log('neighbors', neighbors)


  for(let i = 0; i < neighbors.length; i++){
    dfs(neighbors[i].row, neighbors[i].column)
  }

  return -1
}
*/

let endBFS = true
let dfsRunTimes = 0
// Iterative dfs function prioritizes bottom, then right, then top, then left when visiting neighbors
const dfsIterative = async () => {
  dfsRunTimes++ 
  endBFS = false
  let currentKey = ``
  let current = ''
  let key1 = ''
  let parentForCell = {}
  let stack = []
  let startCell = { row: startRow, column: startColumn }
  stack.push(startCell)
  while(stack.length > 0) {
    var v = stack.pop()

    currentKey = `${v.row}x${v.column}`
    current = 'dfsgameRow-'+v.row+ '-tile-' + v.column
    
    if(dfsTiles[v.row][v.column] == 'end'){
      endBFS = true
      stack = []
      break
    }

    if(!dfsvisited[v.row][v.column]){
      //visit(v)
      dfsvisited[v.row][v.column] = true
      await waitForSeconds(.03)
      
      let yellow = document.querySelectorAll('.yellow-dfs') // change color of nodes that were visited in previous iterations
      for(let i = 0; i <yellow.length; i++) {
        let blues  = yellow;
        yellow[i].classList.remove('yellow-dfs')
        blues[i].classList.add('dark-gray')
      }
      
      if(v.row != 0 || v.column != 0) {
        const changeColorTile = document.getElementById('dfsgameRow-'+ v.row+ '-tile-' + v.column)
        changeColorTile.classList.add('yellow-dfs')
      } 
      for(let i = 0; i < 4; i ++) {
        let newRow = parseInt(parseInt(v.row) + parseInt(rowDirection[i]))
        let newColumn = parseInt(parseInt(v.column) + parseInt(columnDirection[i]))
        //console.log(parseInt(columnDirection[i] + column))
        if(newRow < 0 || newColumn <0){
          continue
        }
        if(newRow >= 20 || newColumn >= 20){
          continue
        }
        
        key1 = `${newRow}x${newColumn}`

        if(dfsvisited[newRow][newColumn]){
          continue
        }

        if(dfsTiles[newRow][newColumn] == 'red') {
          continue
        }

        parentForCell[key1] = {
          key: currentKey,
          cell: current
        }
    
        let help = { row: newRow, column: newColumn}
        //neighbors.push(help)
        stack.push(help)
      }
    }
  }

  const path = []
  let currentKey2 = `${v.row}x${v.column}`
  let current2 = 'dfsgameRow-'+v.row+ '-tile-' + v.column
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
  if(dfsRunTimes < 1) {
    dfsIterative()
  } else {
    console.log('please reset the board')
  }
})

const resetButton = document.getElementById('resetboardButton')
  resetButton.addEventListener('click', () => {
    clearTimeout(help)
    resetBoard()
    //console.log(dfsvisited)
  })

const randomObstaclesButton = document.getElementById('randomobstaclesButton')
randomObstaclesButton.addEventListener('click', () => {
  if(endBFS == true) {
    randomObstacles()
  }
})

const resizeEvent = window.addEventListener('resize', () => {
  intitializeBoard()
})

const resetBoard = () => {
  if(endBFS == true){
    //clearTimeout(help)
    dfsTiles.forEach((gameTileRow, gameTileRowIndex) => {
      gameTileRow.forEach((gameTile, gameTileIndex) =>{
        const tiles = document.getElementById('dfsgameRow-' + gameTileRowIndex + '-tile-' + gameTileIndex)
        tiles.classList.remove('dark-gray', 'red', 'blue1', 'yellow-dfs')
        dfsTiles[gameTileRowIndex][gameTileIndex] = ''
        dfsvisited[gameTileRowIndex][gameTileIndex] = false
      })
    })
  
    dfsTiles[0][0] = 'start'
    dfsTiles[19][19] = 'end'
    endBFS = true
    dfsRunTimes = 0
  } else {
    console.log('process is stil running')
  }
  
}

const waitForSeconds = async (secs) => {
  return await new Promise((resolve) => {
    setTimeout(resolve,secs *1000)
  })
}