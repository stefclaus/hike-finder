class  HikeFinder::Scraper

  def make_hikes
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.hikingupward.com/maps/')
    element = session.all(:css,'.hike')
    
     element.each do |hike|
      new_hike = hike.text.strip
      hike_name = new_hike.split("\t")[0]
      hike_length = new_hike.split("\t")[1]
      hike_url = hike.first('a:nth-child(2)')[:href]
      HikeFinder::Hikes.new_from_index_page(hike_name, hike_length, hike_url)
     end
  end  #ends method 
   
  

end #ends class 