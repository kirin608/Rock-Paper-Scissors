

def error_massege 
    print ' "ERROR" play again (Y) or exit (N): '
    input = gets.chomp.downcase
    if input == "y"
        r_p_s_play1
    else
        exit   
    end
end