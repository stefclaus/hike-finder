class HikeFinder::CLI

    def call
   # HikeFinder::Scraper.new.make_hikes
     welcome 
     start
    end
    
    def start 
      hike_length
      list_hikes
    #  do_it_again #do it again has an insane loop error I haven't figured out
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
      #hike = HikeFinder::Hike.find(input.to_i) 
      #print_hike(hike) #you haven't writtent his method yet 
    end  
    
  
    def do_it_again #this creates an insane loop 
      puts "Would you like to see another hike?"
      input = gets.strip.downcase
      
      if input == "y" || input == "Yes" || input = "Y" || input == "yes"
        start 
      elsif input == "n" || input == "No" || input = "N" || input == "no"
        puts ""
        puts "Thank you! Happy hiking!"
        exit 
      else
        puts ""
        puts "I don't understand that answer."
        start 
      end #ends if 
    end #ends method
    
    def print_hike(hike)
      puts ""
      puts "----------- #{hike.name} -----------"
      puts ""
      puts "Length:           #{hike.length}"
      puts "Hiking Time:          #{hike.hiking_time}"
      puts "Elevation Gain:      #{hike.elevation_gain}"
      puts "---------------Description--------------"
      puts ""
      puts "#{hike.first_paragraph}"
      puts ""
    end

    def print_restaurants(from_number)
      puts ""
      puts "---------- Hikes #{from_number} - #{from_number+9} ----------"
      puts ""
        HikeFinder::Hikes.all[from_number-1, 10].each.with_index(from_number) do |hikes, index|
      puts "#{index}. #{hike.name} - #{hike.length}"
      end #ends iteration
    end #ends class 
  
end #ends class 
