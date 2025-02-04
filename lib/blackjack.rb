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

def hit?(current_total)
prompt_user
  input=get_user_input
if input == "h"
current_total += deal_card
  elsif input == "s"
    current_total
      else
    invalid_command
    hit?(current_total)
     end
  end


def invalid_command
puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total= initial_round
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  end_game(current_total)
end
