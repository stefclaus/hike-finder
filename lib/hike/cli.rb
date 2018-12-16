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
      puts "Which of these hikes would you like to see more information on?"
      experimenting
    end
    
    def list_hikes
      puts ""
      puts "Which hike would you like more information on?"
      input = gets.strip
      hike = HikeFinder::Hikes.find(input.to_i + 1) 
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
  
   def experimenting
      HikeFinder::Hikes.all[0, 365].each.with_index do |hike, index| 
        puts "#{index}. #{hike.hike_name} - #{hike.hike_length}"
      end #ends iteration
      end #ends method 
  
end #ends class 
