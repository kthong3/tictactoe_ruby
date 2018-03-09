Game class
  starts game
  shows board
  until game is over
    repeat player moves
    prompts if location taken
  finds winner
    winning: player can win by filling in a row, column or diagonal

Board class
  builds board
  checks if board location has been filled
    location already taken / prompt to try again
    show previous Xs & Os when prompting player
    tell user location is taken if player tries to take marked location

Player
  chooses board location
  player one moves with X
  player two moves with O
