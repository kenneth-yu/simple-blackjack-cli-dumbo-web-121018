require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp 
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    return current_total
  elsif user_input == 'h'
    #puts deal_card
    #current_total = deal_card + current_total
    return current_total + deal_card
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21 do
    card_total = card_total + hit?(card_total)
    binding.pry
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
