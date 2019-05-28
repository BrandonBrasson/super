class Superman::Movie
attr_accessor :movie, :title, :year
  @@all = []

def initialize
  @@all << self
end

def self.scrape_movie
    @@all
  end

def self.all
 @@all
end

end
