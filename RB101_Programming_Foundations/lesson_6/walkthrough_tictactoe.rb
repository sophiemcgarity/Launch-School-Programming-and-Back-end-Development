require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WIN_CONDITION = 5
STARTING_PLAYER = 'choose' # 'player' or 'computer' or 'choose'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, player_score, computer_score)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    if empty_squares(brd).include?(5)
      square = 5
    end
  end
  
  if !square
    square = empty_squares(brd).sample
  end
  
  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |key, value| line.include?(key) && value == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score(brd, player_score, computer_score)
  if detect_winner(brd) == 'Player'    
    player_score[0] += 1
  elsif detect_winner(brd) == 'Computer'
    computer_score[0] += 1
  end
  prompt "Player score: #{player_score[0]}. Computer score: #{computer_score[0]}"
end

def display_round_winner(brd, p_score, c_score)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won this round!"
  else
    prompt "This round it's a tie!"
  end
end

def display_match_winner(player_score, computer_score)
  if player_score[0] >= WIN_CONDITION
    prompt "Player Wins!!!"
  elsif computer_score[0] >= WIN_CONDITION
    prompt "Computer Wins!!!"
  end
end

def alternate_player(current_player)
  current_player == 'player' ? current_player = 'computer' : current_player = 'player'
end

def place_piece!(brd, current_player)
  current_player == 'player' ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def pick_starting_player(current_player)
  if STARTING_PLAYER == 'choose'
    prompt "Pick who goes first: Type 'p' for player or 'c' for computer."
    input = ''
    
    loop do
      input = gets.chomp
      break if input.downcase == 'p' || input.downcase == 'c'
      prompt "Please enter a valid input. 'p' for player or 'c' for computer."
    end
    
    if input == 'p'
      return current_player = 'player'
    elsif input == 'c'
      return current_player = 'computer'
    end
    
  elsif STARTING_PLAYER == 'player'
    return current_player = 'player'
    
  elsif STARTING_PLAYER == 'computer'
    return current_player = 'computer'
  end
end

loop do
  player_score = [0]
  computer_score = [0]
  current_player = pick_starting_player(current_player)
  
  loop do
  board = initialize_board
  
    loop do
      display_board(board, player_score, computer_score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    
    display_board(board, player_score, computer_score)
    update_score(board, player_score, computer_score)
    display_round_winner(board, player_score, computer_score)
    display_match_winner(player_score, computer_score)
    
    break if player_score[0] >= WIN_CONDITION || computer_score[0] >= WIN_CONDITION
    
    prompt "Press 'enter' key to start next round, or 'q' to quit the current game."
    input = gets.chomp
    break if input.downcase == 'q'
  end
  
  prompt "Start a new game? (y or n)"
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt "Thanks for playing tic tac toe!! Goodbye."
