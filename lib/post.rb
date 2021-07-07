class Post
    attr_accessor :author , :title 
    attr_reader :name
    @@all=[]
   def initialize(title)
        @name= name
        @title= title
        @@all<< self 
    end     
    def self.all
        @@all
    end 
    def author_name
        if self.author
            self.author.name
        else
        end 
    end 

end 