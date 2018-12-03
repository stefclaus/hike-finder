class HikeFinder::Scraper 

  def get_page
    Nokogiri::HTML(open("https://www.hikingupward.com/maps/"))
  end

  #def self.scrape_hikes_index(get_page)
  #   hikes = []
   #  html = get_page 
  #end

#def self.scrape_index_page(index_url)
 #     students = []
#      html = open(index_url)
#      index = Nokogiri::HTML(html)
#      student_card = index.css(".student-card a")
#      #student_name = student_card.css(".student-name").text
#      #student_location = student_card.css(".student-location").text
#      #student_url = student_card.css("a").attribute("href").text
#      student_card.each do |student|
#        student_name = student.css(".student-name").text
#        student_location = student.css(".student-location").text
#        student_url = student.attribute("href").text
 #       students << {name: student_name, location: student_location, profile_url: student_url}
        #binding.pry
 #     end
  #      return students
   #   end

 # def make_hikes
  #  scrape_restaurants_index.each do |r|
#      WorldsBestRestaurants::Restaurant.new_from_index_page(r)
#  end
#end 

end