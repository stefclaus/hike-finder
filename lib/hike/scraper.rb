class  HikeFinder::Scraper

def get_page
    Nokogiri::HTML(open("https://www.hikingupward.com/maps/"))
    binding.pry
  end

  def scrape_hikes_index
     self.get_page.css("ENTER FUNCTIONAL SCRAPE HERE")
  end


  def make_hikes
    scrape_hikes_index.each do |r|
      HikeFinder::Hikes.new_from_index_page(r)
    end
  end 

end