require_relative './player_input'

def computer_turn
    ["r","p","s"].sample
end

def single_player (user = input())

    if user[0] == computer_turn
        puts "tie"
        # tie += 1
    elsif user[0] == "r" && computer_turn == "s"
        puts "user_1 Wins!"
        # user1 += 1
    elsif  user[0] == "r" && computer_turn == "p"
        puts "computer Wins!"
        # computer += 1
    elsif  user[0] == "s" && computer_turn == "p"
        puts "user_1 Wins!"
        # user1 += 1
    elsif  user[0] == "s" && computer_turn == "r"
        puts "computer Wins!"
        # computer += 1

    else  user[0] == "p" && computer_turn == "s"
        puts "computer Wins!"
        # computer += 1
    end
    
end
single_player