VALID_CHOICE = {
  r:  'rock',
  p:  'paper',
  s: 'scissors',
  l:  'lizard',
  k: 'spock'
}

puts VALID_CHOICE

WIN_CONDITIONS = {
  r: [:s, :l],
  p: [:r, :k],
  s: [:p, :l],
  l: [:p, :k],
  k: [:r, :s],
}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WIN_CONDITIONS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won")
  else
    prompt("It's a tie!")
  end
end

def get_player_choice
  choice = ''
  loop do
    prompt("Choose one: (r)ock (p)aper (s)cissors (l)izard spoc(k)")
    choice = gets.chomp.downcase

    if VALID_CHOICE.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
    
  end
end

def welcome_message
  prompt('Rock, Paper, Scissors, Lizard, Spock')
  prompt('Rules: 
          Scissors cuts paper,
          paper covers rock, 
          rock crushes lizard, 
          lizard poisons Spock, 
          Spock smashes scissors, 
          scissors decapitates lizard, 
          lizard eats paper, 
          paper disproves Spock, 
          Spock vaporizes rock, 
          rock crushes scissors.')
end

loop do
  welcome_message
  
  get_player_choice

  computer_choice = VALID_CHOICE.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? ('y' to play again)")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")
