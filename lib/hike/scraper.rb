class  HikeFinder::Scraper

  def self.experimenting
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
    session.first(:css, '.hike a:nth-child(2)')[:href]
  end


  def self.make_hikes
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
    element = session.all(:css,'.hike')
    
     element.each do |hike|
      new_hike = hike.text.strip
      hike_name = new_hike.split("\t")[0]
      hike_length = new_hike.split("\t")[1]
      binding.pry
      #hike_url = 
      HikeFinder::Hikes.new_from_index_page(hike_name, hike_length, hike_url)
     end
  end  #ends method 
   
  

end #ends class 