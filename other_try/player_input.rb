def get_player_input
    puts "Welcome to Rock, Paper, Scissors game!"
    puts "hint: type 'your choice' for single game or 'player1 choice' spase 'player2 choice' for multiplayer"
    print 'Please, enter: "rock" or r, "paper" or p , "scissors" or s: '
    gets.chomp.downcase
end

def input (player_choice = get_player_input())
    user_array=[]
    user_choice = player_choice.split(' ').to_a
     if user_choice.size < 3 && user_choice.size > 0
        user_choice.each do |element|
            if element == "rock" || element == "r"
                user_array.push("r")
            elsif element == "paper" || element == "p"
                user_array.push("p")
            elsif element == "scissors" || element == "s"
                user_array.push("s")
            else
                error_massege
            end
        end
     else
        error_massege
     end
     user_array
end
# input