class  HikeFinder::Scraper

  def get_page
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
   # element = session.first('.hike') #this gives us Beartown State Hike and Hike Length 
  #  puts element.text.strip #this gives us Beartown State Hike and Hike Length 
  end


  def make_hikes
    scrape_hikes_index.each do |r|
      HikeFinder::Hikes.new_from_index_page(r)
    end
  end 

  #session.visit('https://www.hikingupward.com/maps/').all(".hike").each do |hike|
   #   name = hike.find("h3 a").text
  #    distance = hike.find("h3 a")["href"]
  #    binding.pry 
  #    puts hike
  #    puts distance
  #   end
end