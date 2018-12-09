class  HikeFinder::Scraper

  def self.get_page
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
    element = session.first('.hike') #this gives us Beartown State Hike and Hike Length 
    element #this gives us Beartown State Hike and Hike Length 
  end


  def self.make_hikes
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
    element = session.all('.hike')  
    element.each do |hike|
      HikeFinder::Hikes.new_from_index_page(hike)
    end
  end 
  
  
  def self.scrape_hikes 
    session = Capybara::Session.new(:poltergeist)
    index_page = session.visit('https://www.hikingupward.com/maps/')
    
    array_of_hikes = index_page.all(".hike")
    binding.pry 
  end 

  

end