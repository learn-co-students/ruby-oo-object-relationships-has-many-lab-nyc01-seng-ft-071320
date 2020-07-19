class Artist
attr_accessor :name  
    def initialize(name)
        @name= name
       #@@all<<self
    end 
    def songs
        Song.all.select {|song| song.artist == self}
    end 
     def add_song(song)
        song.artist = self    #it goes to the song find the artist and associate it to itself. we are writting equal and double equal because we are defining it
     end 
        def add_song_by_name(song_name)
            
             a_song= Song.new(song_name)   # we wwant to add a song by name, create a new song with it an associate it to the song and artist
             #how do we do it we create a new variable and assign it to a "new " song mane by using the .new methods. the add the variable into a add a song method. if you didnt have a add a song method create one or judt so it.
            add_song(a_song)
         
         end

        def self.song_count 
            Song.all.count 

        end 

   
end 

















