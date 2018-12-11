class HikeFinder::CLI

    def call
      HikeFinder::Scraper.new.make_hikes
      welcome 
      start
    end
    
    def start 
      hike_length
      list_hikes
    end 
    
    def welcome
       puts "Let's find an awesome hike together."
    end 
    
    def hike_length
      puts ""
      puts "How many miles do you want to hike this weekend?  0-5 miles, 5-10 miles, 10-25 miles, or 20+ miles?"
      length = gets.strip.to_i
      print_hike(length) 
    end
    
    def list_hikes
      puts ""
      puts "Which hike would you like more information on?"
      input = gets.strip
      hike = HikeFinder::Hikes.find(input.to_i) 
      print_hike(hike)  
    end  

    def print_hike(hike)
      puts ""
      puts "----------- #{hikes.hike_name} -----------"
      puts ""
      puts "Length:           #{hikes.hike_length}"
      puts "Hiking Time:          #{hikes.hiking_time}"
      puts "Elevation Gain:      #{hikes.elevation_gain}"
      puts "---------------Description--------------"
      puts ""
      puts "#{hikes.first_paragraph}"
      puts ""
    end

    def print_hike(length)
      puts ""
      puts "---------- Hikes #{length} - #{length+9} ----------"
      puts ""
        HikeFinder::Hikes.all[length-1, 10].each.with_index(length) do |hikes, index|
      puts "#{index}. #{hikes.hike_name} - #{hikes.hike_length}"
      end #ends iteration
    end #ends class 
  
end #ends class 
