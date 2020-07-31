class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]] # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  # AI defense
  # what squares have been marked by the human
    # create an array of human marked square
    # select the squares that have a human marker
  def human_marked_squares
    human_marked = @squares.values
    p human_marked
  end

  # are 2 of these squares in the winning line
  def at_risk_square?

  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}  "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}  "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}  "
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker = INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end

  def human_marked?
    marker == TTTGame::HUMAN_MARKER
  end
end

class Player
  attr_accessor :score
  attr_reader :marker

  def initialize(marker)
    @marker = marker
    @score = 0
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  FIRST_TO_MOVE = HUMAN_MARKER
  WINNING_NUMBER = 1

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_marker = FIRST_TO_MOVE
  end

  def play
    clear
    display_welcome_message

    loop do
      main_game
      score_reset
      board.human_marked_squares
      break unless play_again?
      display_play_again_message
    end

    display_goodbye_message
  end

  private

  # the game board needs to clear after each round without clearing the messages
  def main_game
    loop do
      display_board
      player_move
      update_score
      display_result
      display_score
      reset
      break if overall_winner?
    end
  end

  def update_score
    if board.winning_marker == human.marker
      human.score += 1
    elsif board.winning_marker == computer.marker
      computer.score += 1
    end
  end

  def score_reset
    human.score = 0
    computer.score = 0
  end

  def overall_winner?
    true if computer.score >= WINNING_NUMBER || human.score >= WINNING_NUMBER
  end

  def display_score
    puts "Your score is #{human.score}. The computers score is #{computer.score}"
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      # clear_screen_and_display_board if human_turn? # hidden in order to see computer string output for testing
      display_board if human_turn?
    end
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_turn?
    @current_marker == HUMAN_MARKER
  end

  def display_board
    puts "You're a #{human.marker}. Computer is a #{computer.marker}"
    puts ""
    board.draw
    puts ""
  end

  def square_list_start(punctuation, connecting_word)
    list_section = board.unmarked_keys[0..-2].join(punctuation)
    "#{list_section} #{connecting_word} #{board.unmarked_keys[-1]}"
  end

  def square_list_end
    board.unmarked_keys.join.to_s
  end

  def square_number_joiner(punctuation = ', ', connecting_word = 'or')
    if board.unmarked_keys.size > 1
      square_list_start(punctuation, connecting_word)
    else
      square_list_end
    end
  end

  def human_moves
    puts "Choose a square (#{square_number_joiner}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    board[board.unmarked_keys.sample] = computer.marker
    board.at_risk_square?
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = COMPUTER_MARKER
    else
      computer_moves
      @current_marker = HUMAN_MARKER
    end
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "You won!"
    when computer.marker
      puts "Computer won!"
    else
      puts "It's a tie."
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system 'clear'
  end

  def reset
    board.reset
    @current_marker = FIRST_TO_MOVE
    # clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play
