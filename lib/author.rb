require 'pry'
require_relative './post.rb'


class Author
    
                     
    attr_accessor :name, :posts



    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post)
        post.author = self
    
    end

    def add_post_by_title(post_title)
        post_title = Post.new(post_title)
        post_title.author = self
    end
    
    def self.post_count
       #Post.all.select { |post| post.author}.count
        posts.count { |post| post.author}
        #end
    end
end



