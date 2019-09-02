# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant 
WIN_COMBINATIONS = [
  [0, 1, 2], #Top row 
  [3, 4, 5], #Middle row 
  [6, 7, 8], #Bottom row 
  [2, 5, 8], #Right Column
  [1, 4, 7], #Center Column
  [0, 3, 6], #Left Column
  [0, 4, 8], #Right to Left
  [2, 4, 6]  #Left to Right
  ]

def won?(board)
  WIN_COMBINATIONS.each {|win_combination|
    index_1 = win_combination[0]
    index_2 = win_combination[1]
    index_3 = win_combination[2]
  
    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]
   
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  elsif position_1 == "O" && position_2 =="O" && position_3 == "O"
  return win_combination
  }
end
  return false 
end

def full?(board)
  board.all? {|index| index == "X" || index == "0"
end

def draw?(board)
  if !won?(board) && full?(board)
    return true 
  else 
    return false 
  end
end

def over?(board)
  
  
  
  