
class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title_name)
        new_post= Post.new(title_name)
        new_post.author = self
    end

    def self.post_count
        Post.all.count {|post| post}
    end



end