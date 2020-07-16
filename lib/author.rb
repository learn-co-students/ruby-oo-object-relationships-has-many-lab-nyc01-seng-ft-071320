require 'pry'
class Author

    attr_accessor :name, :posts, :title

    def initialize (name)
        @name=name
        @title=title
        @posts=[]
    end
    
    def add_post(post)
        @posts<<post
        post.author=self
    end

    def posts
        Post.all.select{|post|post.author==self}
    end

    def add_post_by_title(name)
        post=Post.new(name)
        post.author=self
        @posts<<post
    end

    def self.post_count
        Post.all.count
    end

end