class HikeFinder::Hikes

  attr_accessor :hike_name, :hike_url, :hike_length, :hiking_time, :elevation_gain, :first_paragraph
  
  @@all = []

  def self.new_from_index_page(hike_name, hike_length, hike_url)
    self.new(hike_name, hike_length, hike_url)
  end 
    
    
  def initialize(hike_name=nil, hike_length=nil, hike_url=nil)
    @hike_name = hike_name
    @hike_length = hike_length 
    @hike_url = hike_url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def doc
    safe_hike_url = "https://#{self.hike_url.split("http://")[1]}"
    @doc ||= Nokogiri::HTML(open(safe_hike_url))
  end
  
  def length
    @length ||= doc.css("table.hike_pages td b")[6].text 
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
  

  

end