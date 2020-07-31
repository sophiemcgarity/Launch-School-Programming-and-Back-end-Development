# More bonus features
# Keep track of a history of moves

# As long as the user doesn't quit, keep track of a history of moves by both the human and computer. What data structure will you reach for? Will you use a new class, or an existing class? What will the display output look like?

# Computer personalities

# We have a list of robot names for our Computer class, but other than the name, there's really nothing different about each of them. It'd be interesting to explore how to build different personalities for each robot. For example, R2D2 can always choose "rock". Or, "Hal" can have a very high tendency to choose "scissors", and rarely "rock", but never "paper". You can come up with the rules or personalities for each robot. How would you approach a feature like this?

class Move
  attr_reader :value, :beats
  
  def initialize(value)
    @value = value
  end

  def >(other_move)
    @beats.include?(other_move.to_s)
  end

  def <(other_move)
    !@beats.include?(other_move.to_s) && @value != other_move.to_s
  end

  def to_s
    @value
  end
end

class Rock < Move
  attr_reader :value, :beats
  
  def initialize
    @value = 'rock'
    @beats = ['scissors', 'lizard']
  end
end

class Paper < Move
  attr_reader :value, :beats
  
  def initialize
    @value = 'paper'
    @beats = ['rock', 'spock']
  end
end

class Scissors < Move
  attr_reader :value, :beats
  
  def initialize
    @value = 'scissors'
    @beats = ['lizard', 'paper']
  end
end

class Lizard < Move
  attr_reader :value, :beats
  
  def initialize
    @value = 'lizard'
    @beats = ['paper', 'spock']
  end
end

class Spock < Move
  attr_reader :value, :beats
  
  def initialize
    @value = 'spock'
    @beats = ['scissors', 'rock']
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
  
  MOVE_CHOICES = {
    'rock'     => Rock.new,
    'scissors' => Scissors.new,
    'paper'    => Paper.new,
    'lizard'   => Lizard.new,
    'spock'    => Spock.new
  }  
  
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What is your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard or spock:"
      choice = gets.chomp
      break if Player::MOVE_CHOICES.keys.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Player::MOVE_CHOICES[choice]
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    self.move = Player::MOVE_CHOICES.keys.sample
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock. Goodbye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_round_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end
  
  def calculate_score
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    end
  end
  
  def display_score
    puts "#{human.name}'s score is: #{human.score}"
    puts "#{computer.name}'s score is: #{computer.score}"
  end
  
  def winning_score?
    (human.score >= 3 || computer.score >= 3)
  end
  
  def display_overall_winner
    if computer.score > human.score
      puts "#{computer.name} won!"
    else
      puts "#{human.name} won!"
    end
  end
  
  def reset_score
    human.score = 0
    computer.score = 0
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts 'Sorry, must be y or n.'
    end

    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def play
    display_welcome_message

    loop do
      loop do
        human.choose
        computer.choose
        display_moves
        display_round_winner
        calculate_score
        display_score
        break if winning_score?
      end
        display_overall_winner
        reset_score
      break unless play_again?
    end

    display_goodbye_message
  end
end

RPSGame.new.play
