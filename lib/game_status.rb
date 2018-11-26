# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def full?(board)
  board.each do |cell|
    if(cell == " ")
      return false
    end
  end
  return true
end

def draw?(board)
  return full?(board) && !won?(board)
end

def won?(board)
  if !full?(board) then return false end
  WIN_COMBINATIONS.each do |win_combination|
    return win_combination
  end
  return nil
end

def over?(board)
  return draw?(board) || !won?(board).nil?
end
