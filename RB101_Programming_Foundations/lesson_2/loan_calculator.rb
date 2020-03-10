def prompt(message)
  puts("=> #{message}")
end

loop do
  prompt('Welcome to the mortage calculator')
  prompt('---------------------------------')
  
  prompt('What is the loan amount?')
  amount = ''
  loop do
    amount = gets.chomp.to_f
    if amount.to_f < 0
      prompt('Enter amount higher than 0')
    else
      break
    end
  end
  
  prompt('What is the APR?')
  prompt('Example: 5 for 5% or 2.5 for 2.5%')
  interest_rate = ''
  loop do
    interest_rate = gets.chomp.to_f
    if interest_rate.to_f < 0
      prompt('Enter interest rate higher than 0')
    else
      break
    end
  end
  
  prompt('What is the loan duration in years?')
  years = ''
  loop do
    years = gets.chomp.to_i
    if years < 0
      prompt('Enter duration longer than 0 years')
    else
      break
    end
  end
  
  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12
  
  monthly_payment = amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is $#{monthly_payment}")
  
  prompt("Another calulation?")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('y')
end
prompt("Thank you for using the Mortgage Calculator!")
