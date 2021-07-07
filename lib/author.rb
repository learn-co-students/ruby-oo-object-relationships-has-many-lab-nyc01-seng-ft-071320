class Author
    attr_accessor :name  , :posts
        def initialize(name)
            @name= name
           #@@all<<self
        end 
        def posts
            Post.all.select {|post| post.author == self}
        end 
         def add_post(post)
            post.author = self    #it goes to the song find the artist and associate it to itself. we are writting equal and double equal because we are defining it
         end 
            def add_post_by_title(title)
                
              new_post = Post.new(title)  
              #binding.pry

                 add_post(new_post)
            end
            def self.post_count
                Post.all.count 
            end 
    
        
    
       
    end 
    
    