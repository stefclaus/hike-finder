class  HikeFinder::Scraper

#don't know if I should use this one or the one below 
 # def get_page
#   Nokogiri::HTML(open("https://www.hikingupward.com/maps/"))
#  end
  
  
  def self.scrape_hikes_index 
    doc = Nokogiri::HTML(open("https://www.hikingupward.com/maps/"))
    binding.pry 
  end



 # def make_hikes
  #  scrape_hikes_index.each do |r|
#      HikeFinder::Hikes.new_from_index_page(r)
#  end
#end 

end