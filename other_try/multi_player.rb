require_relative './player_input'


def multi_player (user = input())
    if user[0] == user[1]
        puts "tie"
    elsif user[0] == "r" && user[1] == "s"
        puts "user_1 Wins!"
        # user1 += 1
    elsif  user[0] == "r" && user[1] == "p"
        puts "user_2 Wins!"
        # user2 += 1
    elsif  user[0] == "s" && user[1] == "p"
        puts "user_1 Wins!"
        # user1 += 1
    elsif  user[0] == "s" && user[1] == "r"
        puts "user_2 Wins!"
        # user2 += 1
    else  user[0] == "p" && user[1] == "s"
        puts "user_2 Wins!"
        # user2 += 1
    end
     
    end