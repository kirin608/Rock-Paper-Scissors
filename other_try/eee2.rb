# def get_player_input 
#      "rock rock"
# end

# def input (player_choice = get_player_input())
#     user_array=[]
#     user = player_choice.split(' ').to_a
#      if user.size < 3 && user.size > 0
#          user.each do |element|
#             if element == "rock" || element == "r"
#                 user_array.push("r")
#             elsif element == "paper" || element == "p"
#                 user_array.push("p")
#             else element == "scissors" || element == "s"
#                 user_array.push("s")
#             end
#         end
#      else
#              "error"
#      end
#     user_array
# end
# input
ssss = ["r"]
computer_turn = ["r","p","s"].sample
p ssss[0].class
p computer_turn.class 
    
