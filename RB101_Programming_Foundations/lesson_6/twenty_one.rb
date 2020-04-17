require 'pry'

WIN_CONDITION = 5
WINNING_NUMBER = 21

def prompt(msg)
  puts "=> #{msg}"
end

suits = ['H', 'S', 'C', 'D']

def initialize_card_deck(suits, card_deck)
  suits.each do |suit|
    (2..10).each { |num| card_deck << [suit] + [num.to_s] }
    ['J', 'Q', 'K'].each { |el| card_deck << [suit] + [el] }
    ['A'].each { |el| card_deck << [suit] + [el] }
  end

  card_deck
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0

  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > WINNING_NUMBER
  end

  sum
end

def deal_card(card_deck, card_hand)
  dealt_card = card_deck.sample
  card_deck.delete(dealt_card)
  card_hand << dealt_card
end

def starting_deal(card_deck, players_hand, dealers_hand)
  deal_card(card_deck, players_hand)
  deal_card(card_deck, players_hand)
  deal_card(card_deck, dealers_hand)
  deal_card(card_deck, dealers_hand)
end

def display_hand(card_hand)
  card_hand.map do |card|
    card[1]
  end
end

def busted?(card_hand)
  total(card_hand) > WINNING_NUMBER
end

def winner?(players_hand, dealers_hand)
  player_total = total(players_hand)
  dealer_total = total(dealers_hand)

  if player_total > WINNING_NUMBER
    :player_busted
  elsif dealer_total > WINNING_NUMBER
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_winner(players_hand, dealers_hand)
  result = winner?(players_hand, dealers_hand)

  case result
  when :player_busted
    prompt "You bust! Dealer wins!"
  when :dealer_busted
    prompt "Dealer bust! Player wins!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def calculate_score(players_hand, dealers_hand, players_score, dealers_score)
  result = winner?(players_hand, dealers_hand)
  if result == :dealer || result == :player_busted
    dealers_score[0] += 1
  elsif result == :player || result == :dealer_busted
    players_score[0] += 1
  end
end

def play_again?
  puts "----------------------------------------"
  answer = ''

  loop do
    prompt "Do you want to play again? (y)es or (n)o"
    answer = gets.chomp.downcase
    break if ['y', 'n'].include?(answer)
    prompt "Invalid input. Please enter 'y' or 'n'."
  end

  if answer == 'y'
    return true
  elsif answer == 'n'
    return false
  end
end

def display_overall_winner(players_score, dealers_score)
  if players_score[0] >= WIN_CONDITION
    prompt "You win!!!"
  elsif dealers_score[0] >= WIN_CONDITION
    prompt "Dealer wins!!!"
  end
end

loop do
  players_score = [0]
  dealers_score = [0]
  prompt "Welcome to 21. Try and beat the dealer by getting as close to 21."
  prompt "First to win 5 rounds wins."

  loop do
    card_deck = []
    players_hand = []
    dealers_hand = []
    initialize_card_deck(suits, card_deck)

    prompt "Player's score: #{players_score[0]}."
    prompt "Dealer's score: #{dealers_score[0]}."

    starting_deal(card_deck, players_hand, dealers_hand)

    prompt "You have: #{display_hand(players_hand)[0]} " \
           "#{display_hand(players_hand)[1]}"
    prompt "Dealer has: #{display_hand(dealers_hand)[0]} and unknown card"

    loop do
      input = ''
      loop do
        prompt "Do you want to (h)it or (s)tay?"
        input = gets.chomp.downcase
        break if ['h', 's'].include?(input)
        prompt "Invalid answer. Must enter 'h' or 's'"
      end

      if input == 'h'
        deal_card(card_deck, players_hand)
        prompt "You chose to hit!"
        prompt "You cards are now: #{players_hand}"
        prompt "Your card total is: #{total(players_hand)}"
      end

      break if input == 's' || busted?(players_hand)
    end

    if busted?(players_hand)
      prompt "You bust at #{total(players_hand)}"
    else
      prompt "You stayed at #{total(players_hand)}"
    end

    prompt "Dealer's turn..."

    loop do
      break if total(dealers_hand) >= (WINNING_NUMBER - 4)
      prompt "Dealer hits!"
      deal_card(card_deck, dealers_hand)
      prompt "Dealer's cards are now: #{dealers_hand}"
    end

    if busted?(dealers_hand)
      prompt "Dealer total is now: #{total(dealers_hand)}"
    else
      prompt "Dealer stays at #{total(dealers_hand)}"
    end

    winner?(players_hand, dealers_hand)
    display_winner(players_hand, dealers_hand)
    calculate_score(players_hand, dealers_hand, players_score, dealers_score)

    prompt "Player's score: #{players_score[0]}."
    prompt "Dealer's score: #{dealers_score[0]}."

    if players_score[0] >= WIN_CONDITION || dealers_score[0] >= WIN_CONDITION
      break
    end

    input = ''
    loop do
      prompt "Press (s)tart next round, or (q)uit the current game."
      input = gets.chomp.downcase
      break if ['s', 'q'].include?(input)
      prompt "Invalid input. Please enter 's' or 'q'"
    end

    break if input == 'q'
  end

  display_overall_winner(players_score, dealers_score)

  play_again? ? next : break
end

prompt 'Thanks for playing!!!'
