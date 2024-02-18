def game_score_tracker
    rooms = {
      "Room 1" => 5,
      "Room 2" => 10,
      "Room 3" => 15
    }
    total_points = 0
  
    puts "Welcome to Adventure Game!"
    puts "You have #{total_points} points."
  
    loop do
      puts "Choose a room (1-3) to enter or 'exit' to end the game:"
      room_choice = gets.chomp
  
      if room_choice == "exit"
        puts "Game over! You collected a total of #{total_points} points."
        break
      elsif (1..3).include?(room_choice.to_i)
        room_name = "Room #{room_choice}"
        points = rooms[room_name]
        total_points += points
        puts "You entered #{room_name} and earned #{points} points."
      else
        puts "Invalid choice. Please try again."
      end
    end
  end
  
  game_score_tracker
  