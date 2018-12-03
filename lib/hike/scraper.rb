class  HikeFinder::Scraper

 # def get_page
#   Nokogiri::HTML(open("https://www.hikingupward.com/maps/"))
#  end
  
  
  def self.scrape_hikes_index 
    doc = Nokogiri::HTML(open("https://www.hikingupward.com/maps/"))
    binding.pry 
  end



 # def make_hikes
  #  scrape_restaurants_index.each do |r|
#      WorldsBestRestaurants::Restaurant.new_from_index_page(r)
#  end
#end 

end