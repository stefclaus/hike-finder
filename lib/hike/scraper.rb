class  HikeFinder::Scraper

  def self.select_single_hike
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
    element = session.first('.hike') #this gives us Beartown State Hike and Hike Length 
    element.text.strip #this gives us Beartown State Hike and Hike Length 
  end


  def self.make_hikes
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
    element = session.all(:css,'.hike')
    element.each do |hike|
      new_hike = hike.text.strip
      hike_name = new_hike.split("\t")[0]
      hike_length = new_hike.split("\t")[1]
      HikeFinder::Hikes.new_from_index_page(hike_name)
    end
    binding.pry
  end 
  
  

end