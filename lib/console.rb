require 'pry'
require_relative './post.rb'
require_relative './song.rb'
require_relative './author.rb'
require_relative './artist.rb'

elvis_presley = Artist.new("Elvis Presley")
the_beatles  = Artist.new("The Beatles")

 blue_suede_shoes = Song.new("Blue Suede Shoes")
 #jailhouse_rock = Song.new("Jailhouse Rock")
 hey_jude = Song.new("Hey Jude")
 #let_it_be = Song.new("Let It Be")

 the_beatles.add_song_by_name("Back in the USSR")

binding.pry