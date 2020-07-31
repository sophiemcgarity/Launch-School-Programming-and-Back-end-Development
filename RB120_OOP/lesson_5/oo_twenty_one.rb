class Participant
  attr_accessor :name, :hand

  def initialize
    @name = name
    @hand = []
  end

  def busted?
    total > 21
  end

  def correct_value_for_ace(total)
    hand.select(&:ace?).count.times do
      break if total <= 21
      total -= 10
    end
    total
  end

  def calculate_face_value(total)
    hand.each do |card|
      total += if card.ace?
                 11
               elsif card.jack? || card.queen? || card.king?
                 10
               else
                 card.face.to_i
               end
    end
    total
  end

  def total
    total = 0
    total = calculate_face_value(total)
    correct_value_for_ace(total)
  end

  def show_hand
    puts "-- #{name}'s hand: --"
    hand.each do |card|
      puts "=> #{card}"
    end
    puts '-------------------------'
  end
end

class Player < Participant
  attr_accessor :move

  def initialize
    super
    @move = move
  end
end

class Dealer < Participant
  NAMES = ['R2D2', 'Cayde', 'Kal', 'Ghost']

  def initialize
    super
  end
end

class Card
  SUITS = ['H', 'D', 'S', 'C']
  FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  def initialize(suit, face)
    @suit = suit
    @face = face
  end

  def to_s
    "The #{face} of #{suit}."
  end

  def suit
    case @suit
    when 'H' then 'Hearts'
    when 'D' then 'Diamonds'
    when 'S' then 'Spades'
    when 'C' then 'Clubs'
    end
  end

  def face
    case @face
    when 'J' then 'Jack'
    when 'Q' then 'Queen'
    when 'K' then 'King'
    when 'A' then 'Ace'
    else
      @face
    end
  end

  def ace?
    face == 'Ace'
  end

  def jack?
    face == 'Jack'
  end

  def queen?
    face == 'Queen'
  end

  def king?
    face == 'King'
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Card::SUITS.map do |suit|
      Card::FACES.map do |face|
        @cards << Card.new(suit, face)
      end
    end

    cards.shuffle!
  end

  def deal
    cards.pop
  end
end

class Game
  attr_accessor :deck
  attr_reader :player, :dealer

  HIT_CHOICES = ['h', 'hit']
  STAY_CHOICES = ['s', 'stay']

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def welcome_message
    puts "Welcome to 21. Try and beat the dealer without going bust!"
  end

  def goodbye_message
    puts "Thank you for playing 21!"
  end

  def ask_name
    puts "What is your name?"

    loop do
      player.name = gets.chomp
      break if player.name.size >= 1
      puts "Enter at least 1 character."
    end
  end

  def set_dealer_name
    dealer.name = Dealer::NAMES.sample
  end

  def deal_cards
    2.times do
      player.hand << deck.deal
      dealer.hand << deck.deal
    end
  end

  def show_cards
    dealer.show_hand
    player.show_hand
  end

  def hit(participant)
    participant.hand << deck.deal
  end

  def valid_choice?(choice)
    HIT_CHOICES.include?(choice) || STAY_CHOICES.include?(choice)
  end

  def choose_hit_or_stay
    puts "Do you want to (h)it or (s)tay?"
    choice = nil
    loop do
      choice = gets.chomp.downcase
      break if valid_choice?(choice)
      puts "Invalid input. Please choose 'h' to hit or 's' to stay."
    end
    player.move = choice
  end

  def stay_message
    puts "#{player.name} stays!" if STAY_CHOICES.include?(player.move)
  end

  def player_turn
    loop do
      break if player.busted?
      puts "Your total is #{player.total}."
      choose_hit_or_stay
      HIT_CHOICES.include?(player.move) ? hit(player) : break
      clear
      player.show_hand
    end
    clear
    stay_message
  end

  def dealer_turn
    loop do
      hit(dealer) if dealer.total < 17
      break if dealer.total > 17
    end
  end

  def show_totals
    puts "Dealer's total #{dealer.total}."
    puts "    Your total #{player.total}."
  end

  def show_busted
    if player.busted? && dealer.busted?
      puts "You and the dealer are bust. It's a tie."
    elsif player.busted?
      puts "Your bust. Dealer wins!"
    elsif dealer.busted?
      puts "Dealer is bust. You win!"
    end
  end

  def show_result
    if player.total > dealer.total
      puts "You win!"
    elsif dealer.total > player.total
      puts "Dealer wins!"
    else
      puts "It's a tie."
    end
  end

  def result_output
    if dealer.busted? || player.busted?
      show_busted
    else
      show_result
    end
  end

  def play_again?
    puts "Do you want to play again? (y) or (n)"
    answer = nil
    loop do
      answer = gets.chomp.downcase
      break if answer == 'n' || answer == 'y'
      puts "Invalid Input. Please enter (y) or (n)."
    end

    answer == 'y'
  end

  def clear
    system 'clear'
  end

  def reset
    self.deck = Deck.new
    player.hand = []
    dealer.hand = []
  end

  def main_game
    reset
    set_dealer_name
    deal_cards
    show_cards
    player_turn
    dealer_turn
    show_totals
    result_output
  end

  def start
    clear
    welcome_message
    ask_name
    loop do
      main_game
      break unless play_again?
      clear
    end
    goodbye_message
  end
end

Game.new.start
