# vesrsion 2 of rock paper scissors game
# continue building out functionality for the game, including a tally of wins, ties and losses.

def get_player_input
    puts "Welcome to Rock, Paper, Scissors game!"
    puts "hint: type 'your choice' for single game or 'player1 choice' spase 'player2 choice' for multiplayer"
    print 'Please, enter: "rock" or r, "paper" or p , "scissors" or s: '
    gets.chomp.downcase
end

def new_game_massege 
    print 'Play again (Y) or exit (N): '
    input = gets.chomp.downcase
    if input.downcase == "y" 
        r_p_s
    else
        exit   
    end
end

def error_massege 
    print ' "ERROR" play again (Y) or exit (N): '
    input = gets.chomp.downcase
    if input.downcase == "y"
        r_p_s
    else
        exit   
    end
end

def computer_turn_sample
    ["r","p","s"].sample
end

$ties_counter = 0
$user_1_counter = 0
$user_2_counter = 0
$computer_counter = 0


def r_p_s (player_choice = get_player_input())
    user = player_choice.split(' ').to_a
    computer_turn = computer_turn_sample

    
    if user.size == 1 
        if user[0][0] == computer_turn
            $ties_counter += 1
            p "tie"
        elsif user[0][0] == "r" && computer_turn == "s"
            $user_1_counter += 1
            p "user_1 Wins!"
        elsif  user[0][0] == "r" && computer_turn == "p"
            $computer_counter += 1
            p "computer Wins!"
        elsif  user[0][0] == "s" && computer_turn == "p"
            $user_1_counter += 1
            p "user_1 Wins!"
        elsif  user[0][0] == "s" && computer_turn == "r"
            $computer_counter += 1
            p "computer Wins!"
        elsif  user[0][0] == "p" && computer_turn == "s"
            $computer_counter += 1
            p "computer Wins!"
        elsif  user[0][0] == "p" && computer_turn == "r"
            $user_1_counter += 1
            p "user_1 Wins!"
        else
            error_massege
        end
    elsif user.size == 2
        if user[0][0] == user[1]
            p "tie"
            $ties_counter += 1
        elsif user[0][0] == "r" && user[1][0] == "s"
            p "user_1 Wins!"
            $user_1_counter += 1
        elsif  user[0][0] == "r" && user[1][0] == "p"
            p "user_2 Wins!"
            $user_2_counter +=1
        elsif  user[0][0] == "s" && user[1][0] == "p"
            p "user_1 Wins!"
            $user_1_counter += 1
        elsif  user[0][0] == "s" && user[1][0] == "r"
            p "user_2 Wins!"
            $user_2_counter +=1
        elsif  user[0][0] == "p" && user[1][0] == "s"
            p "user_2 Wins!"
            $user_2_counter +=1
        elsif  user[0][0] == "p" && user[1][0] == "r"
            p "user_1 Wins!"
            $user_1_counter +=1
        else
            error_massege
        end
    else
        error_massege
    end
    p "user 1: #{$user_1_counter}, user 2: #{$user_2_counter}, ties: #{$ties_counter}, computer wins: #{$computer_counter} "

     
    new_game_massege
    
end  
