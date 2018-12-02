class HikeFinder::CLI
  
    def call
     welcome 
     hike_length
     list_hikes
    end
    
    def welcome
       puts "Let's find an awesome hike together."
    end 
    
    def hike_length
      puts ""
      puts "How many miles do you want to hike this weekend?  0-5 miles, 5-10 miles, 10-25 miles, or 20+ miles?"
      input = gets.strip.to_i
      #print_hikes(input) #you haven't written this method yet 
    end
    
    def list_hikes
      puts ""
      puts "Which hike would you like more information on?"
      input = gets.strip
      #hike = HikeFinder::Hike.find(input.to_i) #You haven't written this method yet 
      #print_restaurant(restaurant) #you haven't writtent his method yet 
    end  
    
  
    def do_it_again #this creates an insane loop 
    puts ""
    puts "Would you like to see another hike?"

    input = gets.strip.downcase
    if input == "y" || input == "Yes" || input = "Y" || input == "yes"
      start
    binding.pry
    elsif input == "n" || input == "No" || input = "N" || input == "no"
     puts ""
      puts "Thank you! Happy hiking!"
      exit 
    else
      puts ""
      puts "I don't understand that answer."
      start 
    end
  end 
  
end #ends class 
