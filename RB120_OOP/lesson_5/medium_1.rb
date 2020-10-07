# 1 ------------------------------------------------------------------------------------------
# Privacy
# class Machine
#   def start
#     flip_switch(:on)
#   end

#   def stop
#     flip_switch(:off)
#   end

#   def get_switch
#     case switch
#     when :on then puts "Switch is on."
#     when :off then puts "Switch is off."
#     else puts "No switch initialized."
#     end
#   end

#   private

#   attr_accessor :switch

#   def flip_switch(desired_state)
#     self.switch = desired_state
#   end
# end

# 2 -------------------------------------------------------------------------------------
# Fixed Array




# 3 -----------------------------------------------------------------------------------
# Students
# class Student
#   attr_reader :name

#   def initialize(name, year)
#     @name = name
#     @year = year
#   end

#   def greeting
#     "Hello my name is #{name}."
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = parking
#   end

#   def greeting
#     super + " And I have parking on campus."
#   end
# end

# class Undergraduate < Student
#   def greeting
#     super + " And I don't have parking on campus."
#   end
# end

# tim = Graduate.new('Tim', 1980, true)
# tom = Undergraduate.new('Tom', 1990)

# puts tim.greeting
# puts tom.greeting

# 4 ---------------------------------------------------------------------------
# Circular Queue



# 5 ---- Stack Machine Interpretation -----


# 6 ---- Number Guesser Part 1 -----
# class GuessingGame
#   RANGE = 1..100
#   MAX_GUESSES = 7
  
#   def initialize
#     @secret_num = rand(RANGE)
#   end
  
#   def play
#     play_game
#   end  
  
#   private

#   def guesses_remaining
#     puts "You have #{guesses} guesses remaining."
#   end

#   def valid_number?(number)
#     (1..100).include?(number)
#   end
  
#   def decrease_guesses
#     self.guesses -= 1
#   end
  
#   def correct_guess?(number)
#     @secret_num == number
#   end
  
#   def display_guess_result(number)
#     if correct_guess?(number) 
#       puts "That's the number!"
#     elsif number < @secret_num
#       puts "You guess is too low."
#     elsif number > @secret_num
#       puts "Your guess is too high."
#     end
#   end
  
#   def play_game
#     MAX_GUESSES.downto(1) {|num|
#       puts "Enter a number between 1 and 100:"
#       number = gets.chomp.to_i

#       loop do
#         break if valid_number?(number)
#         puts "Invalid guess. Enter a number between 1 and 100"
#         number = gets.chomp.to_i
#       end
      
#       display_guess_result(number)
#       break if correct_guess?(number)
#       puts "You have no more guesses. You lost!" if num <= 1
#     }
#   end
# end

# game = GuessingGame.new
# puts game.play

class GuessingGame
  MAX_GUESSES = 7
  RANGE = 1..100
  
  RESULT_OF_GUESS_MESSAGE = {
    high: "Your number is too high.",
    low:  "Your number is too low.",
    match: "That's the number"
  }.freeze
  
  WIN_OR_LOSE = {
    high:  :lose,
    low:   :lose,
    match: :win
  }.freeze
  
  RESULT_OF_GAME_MESSAGE = {
    win:  "You won!",
    lose: "You have no more guesses. You lost!"
  }.freeze
  
  def initialize
    @secret_number = nil
  end
  
  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end
  
  private
  
  def reset
    @secret_number = rand(RANGE)
  end
  
  def play_game
    result = nil
    MAX_GUESSES.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end
    WIN_OR_LOSE[result]
  end
  
  def display_guesses_remaining(remaining)
    puts
    if remaining == 1
      puts "You have 1 guess remaining"
    else
      puts "You have #{remaining} guesses remaining."
    end
  end
  
  def obtain_one_guess
    loop do
      print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
      guess = gets.chomp.to_i
      return guess if RANGE.cover?(guess)
      print "Invalid guess."
    end
  end
  
  def check_guess(guess_value)
    return :match if guess_value == @secret_number
    return :low   if guess_value < @secret_number
    :high
  end
  
  def display_game_end_message(result)
    puts "", RESULT_OF_GAME_MESSAGE[result]
  end
end

game = GuessingGame.new
puts game.play




