VALID_CHOICES = %w(r p s l k)

CHOICE_ABREVS = { r: 'rock',
                  p: 'paper',
                  s: 'scissors',
                  l: 'lizard',
                  k: 'spock' 
                }

WIN_CONDITIONS = {
  r: [:s, :l],
  p: [:r, :k],
  s: [:p, :l],
  l: [:p, :k],
  k: [:r, :s],
}

WINNING_SCORE = 5

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

def display_score(player_score, computer_score)
  prompt("Player score is: #{player_score}")
  prompt("Computer score is: #{computer_score}")
end

def welcome_message
  prompt('Welcome to: Rock, Paper, Scissors, Lizard, Spock - The Game')
  prompt('First to win five rounds is the ultimate winner.')
  prompt('Here are the rules: 
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
  choice = ''
  player_score = 0
  computer_score = 0
  welcome_message
  
  loop do
    
    loop do
      prompt("Choose one: (r)ock (p)aper (s)cissors (l)izard spoc(k)")
      choice = gets.chomp.downcase
  
      break if VALID_CHOICES.include?(choice)
      prompt("That's not a valid choice.")
    end
  
    computer_choice = VALID_CHOICES.sample
    
    prompt("You chose: #{CHOICE_ABREVS[choice.to_sym]}; Computer chose: #{CHOICE_ABREVS[computer_choice.to_sym]}")
    
    display_results(choice.to_sym, computer_choice.to_sym)
    
    if win?(choice.to_sym, computer_choice.to_sym)
      player_score += 1
    elsif win?(computer_choice.to_sym, choice.to_sym)
      computer_score += 1
    end
        
    display_score(player_score, computer_score)
    
    break if player_score == WINNING_SCORE || computer_score == WINNING_SCORE
    
  end
  prompt("Do you want to play again? ('y' to play again)")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
