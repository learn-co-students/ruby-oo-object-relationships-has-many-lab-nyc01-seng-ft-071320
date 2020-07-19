class Song 
  
  attr_accessor :name, :artist
  attr_reader 
 
  @@all = []
  
  def initialize(name)
    @name = name  # we can rename song because their will be many songs, aka get a name and set a name. 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
   def artist_name
    if self.artist
        self.artist.name
      else 
        nil 
      end 
  end 


end 