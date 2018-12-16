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
      puts "How many miles do you want to hike this weekend? Choose a number under 20."
      puts "(We're not *that* ambitious here.)"
      length = gets.strip.to_i
      print_hike(length) 
    end
    
    def list_hikes
      puts ""
      puts "Which hike would you like more information on?"
      input = gets.strip
      hike = HikeFinder::Hikes.find(input.to_i) 
      print_detials(hike)
    end  

    def print_detials(hike)
      puts ""
      puts "----------- #{hike.hike_name} -----------"
      puts ""
      puts "Length:           #{hike.hike_length}"
      puts "Hiking Time:          #{hike.hiking_time}"
      puts "Elevation Gain:      #{hike.elevation_gain}"
      puts "---------------Description--------------"
      puts ""
      puts "#{hike.first_paragraph}"
      puts ""
    end

    def print_hike(length)
      puts ""
      puts "---------- #{length} Mile Hikes in the Mid-Atlantic Region ----------"
      puts ""
        HikeFinder::Hikes.all[length].each_index.select(length) do |hikes, index|
          puts "#{index}. #{hikes.hike_name} - #{hikes.hike_length}"
        end #ends iteration
    end #ends class 
  
  
end #ends class 
