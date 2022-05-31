def get_player_input
    puts "Welcome to Rock, Paper, Scissors game!"
    puts "hint: type 'your choice' for single game or 'player1 choice' spase 'player2 choice' for multiplayer"
    print 'Please, enter: "rock" or r, "paper" or p , "scissors" or s: '
    gets.chomp.downcase
end

def error_massege 
    print ' "ERROR" play again (Y) or exit (N): '
    input = gets.chomp.downcase
    if input.downcase == "y"
        r_p_s_play
    else
        exit   
    end
end

def computer_turn_sample
    ["r","p","s"].sample
end

def r_p_s_play (player_choice = get_player_input())
    user = player_choice.split(' ').to_a
    computer_turn = computer_turn_sample
    if user.size == 1 
        if user[0][0] == computer_turn
           p  "tie"
        elsif  user[0][0] == "r" && computer_turn == "s"
           p  true
        elsif  user[0][0] == "r" && computer_turn == "p"
           p  false
        elsif  user[0][0] == "s" && computer_turn == "p"
           p  true
        elsif  user[0][0] == "s" && computer_turn == "r"
           p  false
        elsif  user[0][0] == "p" && computer_turn == "s"
            p  false
        elsif  user[0][0] == "p" && computer_turn == "r"
           p  true
        else
            error_massege
        end
    elsif user.size == 2
        if user[0][0] == user[1]
            p "tie"
        elsif  user[0][0] == "r" && user[1][0] == "s"
          p true
        elsif  user[0][0] == "r" && user[1][0] == "p"
          p  false
        elsif  user[0][0] == "s" && user[1][0] == "p"
          p   true
        elsif  user[0][0] == "s" && user[1][0] == "r"
          p  false
        elsif  user[0][0] == "p" && user[1][0] == "s"
          p  false
        elsif  user[0][0] == "p" && user[1][0] == "r"
          p  true
        else
            error_massege
        end
    else
        error_massege
    end
   
end    

