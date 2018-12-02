class HikeFinder::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.hikingupward.com/maps/"))
  end

  def scrape_hikes_index
     self.get_page.css("div#t1-50 li")
  end

 # def make_hikes
  #  scrape_restaurants_index.each do |r|
#      WorldsBestRestaurants::Restaurant.new_from_index_page(r)
#  end
#end 

end