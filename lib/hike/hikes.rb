class HikeFinder::Hikes

  attr_accessor :name, :length, :hiking_time, :elevation_gain, :first_paragraph

  @@all = []

   def self.new_from_index_page(new_hike)
    self.new(
    #  r.css("h2").text,
    #  "https://www.theworlds50best.com#{r.css("a").attribute("href").text}",
    #  r.css("h3").text,
     # r.css(".position").text
     )
  end

  def initialize(name=nil, length=nil, hiking_time=nil, elevation_gain=nil, first_paragraph=nil)
    @name = name
    @length = length
    @hiking_time= hiking_time
    @elevation_gain = elevation_gain
    @first_paragraph = first_paragraph
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

 def length
    @length ||= doc.css("table.hike_pages td b")[6].text  
  end
  
  def self.scrape 
    doc ||= Nokogiri::HTML(open("https://www.hikingupward.com/PNF/RoaringForkFalls/"))
    table = doc.at('.hike_pages')
    length = doc.css("table.hike_pages td b")[6].text  
    hiking_time = doc.css("table.hike_pages td")[13].text.split("\r\n")[0]
    elevation_gain = doc.css("table.hike_pages td")[13].text.split("\r\n")[1].gsub(/\s+/, "")
    first_paragraph = doc.search("p")[1].text
  end

  def hiking_time
    @hiking_time ||= doc.css("table.hike_pages td")[13].text.split("\r\n")[0]
  end

 def elevation_gain
    @elevation_gain ||= doc.css("table.hike_pages td")[13].text.split("\r\n")[1].gsub(/\s+/, "")
  end

  def first_paragraph
    @first_paragraph ||= doc.search("p")[1].text
  end


  def doc
   # @doc ||= Nokogiri::HTML(open(self.url))
   @doc ||= Nokogiri::HTML(open("https://www.hikingupward.com/PNF/RoaringForkFalls/"))
  end

end