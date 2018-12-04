class HikeFinder::Hikes

  attr_accessor :name, :length, :difficulty, :streams, :views, :solitiude, :camping 

  @@all = []

   def self.new_from_index_page(r)
    self.new(
    #  r.css("h2").text,
    #  "https://www.theworlds50best.com#{r.css("a").attribute("href").text}",
    #  r.css("h3").text,
     # r.css(".position").text
     )
  end

  def initialize(name=nil, length=nil, difficulty=nil, streams=nil, views=nil, solitude=nil, camping=nil)
    @name = name
    @length = length
    @difficulty= difficulty
    @streams = streams
    @views = views
    @solitude = solitude 
    @camping = camping 
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

 # def length
 #   @length ||= #doc.css("div.c-4.nr.nt ul:nth-child(8) li").text
 # end

#  def difficulty
 #   @difficulty ||= #doc.css("div.c-4.nr.nt ul:nth-child(6) li").text
 # end

 # def streams
 #   @streams ||= #doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(1)").text.split("+").join(". Tel: +")
 # end

 # def solitude
 #   @solitude ||= #doc.css("div.c-4.nr.nt ul:nth-child(3) li").text.split(" (pictured)").join("")
 # end

 # def camping
  #  @camping ||= #doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(2) a").text
    # @website_url ||= doc.xpath("//div[@class='c-4 nr nt']/ul[4]/li[2]/a").text
 # end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

end