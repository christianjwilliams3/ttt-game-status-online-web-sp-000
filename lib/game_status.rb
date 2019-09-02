# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
def WIN_COMBINATIONS = [
  [0, 1, 2], #Top row 
  [3, 4, 5], #Middle row 
  [6, 7, 8], #Bottom row 
  [2, 5, 8], #Right Column
  [1, 4, 7], #Center Column
  [0, 3, 6], #Left Column
  [0, 4, 8], #Right to Left
  [2, 4, 6], #Left to Right
  ]

def won?(board)
  WIN_COMBINATIONS.boars {win_combo}
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  
   position_1 = board[win_index_1]