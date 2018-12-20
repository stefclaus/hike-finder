class HikeFinder::CLI

    def call
      HikeFinder::Scraper.new.make_hikes
       puts "Let's find a micro-adventure together."
       puts "Hiking with small kids is hard, but that doesn't mean you can't have a mini-adventure!"
      start
    end
    
    def start 
      puts ""
      puts "How long do you want your mini-hike to be?"
      puts "Type 1 for 1 mile hikes, 2 for 2 mile hikes, or 3 for 3 mile hikes."
      
      length = gets.strip.to_i
      print_hike(length)
      
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
     if length == 1
        puts "---------- #{length} Mile Hikes in the Mid-Atlantic Region ----------"
        HikeFinder::Hikes.all[6, 12].each.with_index do |hike, index| 
          puts "#{index+6}. #{hike.hike_name} - #{hike.hike_length}"
        end #ends iteration
      elsif length == 2
        puts "---------- #{length} Mile Hikes in the Mid-Atlantic Region ----------"
        HikeFinder::Hikes.all[18, 19].each.with_index do |hike, index| 
          puts "#{index+18}. #{hike.hike_name} - #{hike.hike_length}"
        end #ends iteration
      elsif length == 3
        puts "---------- #{length} Mile Hikes in the Mid-Atlantic Region ----------"
        HikeFinder::Hikes.all[40, 17].each.with_index do |hike, index| 
          puts "#{index+40}. #{hike.hike_name} - #{hike.hike_length}"
        end #ends iteration
      else 
        puts "Sorry--choose a number between 1 and 3 next time."
      end #ends if statement 
    end #ends method 
  
end #ends class 
