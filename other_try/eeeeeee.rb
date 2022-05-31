require_relative './single_player'
require_relative './multi_player'
require_relative './player_input'

require_relative './error_massege'



def new_game_massege 
    print 'Play again (Y) or exit (N): '
    input = gets.chomp.downcase
    if input == "y"
        r_p_s_play1
    else
        exit   
    end
end





def r_p_s_play1 
    user = input
    
    if user.size == 1
    single_player
    elsif user.size == 2
    multi_player
    else
    "error1"
    end
    new_game_massege
end    
r_p_s_play1
 
 
 

# user1 = 0
    # user2 = 0
    # computer = 0
    # tie = 0

# multi_player
 
 # p "score user 1 (#{user1}) user 2  (#{user2}) computer (#{computer}) tie (#{tie})"