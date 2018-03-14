game starts
  shows the board
  each player takes a turn
    during each turn player chooses location to move
    if it is a valid move, the board marks location
    if it is not valid, game will ask to select a valid move
game ends when board is either filled or if winner is found
game declares winner or draw




notes
Game class
  starts game
    shows board
  until game is over
    ask player for location
    display board to show available locations
    when player chooses location:
      check if it is a valid move
        if number is on the board
        if location has been taken

    how game is over:
      when board is filled
        no winner found
      when winner is found
        winning: board shows if winning set has been found

  when game is over:
    declare winner or draw

Board
  builds board
  marks locations after game provides user inputto board
  searches for winning sets
    finds if marks are filled in a row, column or diagonal

Player
  player one moves with X
  player two moves with O




game starts
  shows the board
  each player takes a turn
    during each turn player chooses location to move
    if it is a valid move, the board marks location
    if it is not valid, game will ask to select a valid move
game ends when board is either filled or if winner is found
game declares winner or draw
