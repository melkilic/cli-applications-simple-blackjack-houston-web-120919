def welcome
puts  "Welcome to the Blackjack Table"
end

def deal_card
random_num= rand(1..11)
end

def display_card_total(card_total)
   puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
sum= deal_card + deal_card
display_card_total(sum)
return sum
end

def hit?(current)
prompt_user
  input=get_user_input
if input == "s"
  current
  elsif input == "h"
    current += deal_card
      else
    invalid_command
    puts "Type 'h' to hit or 's' to stay"
     end
  end


def invalid_command
puts 'Please enter a valid command'
prompt_user
get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
