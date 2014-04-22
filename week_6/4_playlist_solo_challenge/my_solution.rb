# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].
# By Myself

# Pseudocode
=begin 
	Create a Class, for songs, with 2 variables for artist and title
	Set these variables equal to themselves, so they can be called upon in methods
	For songs being played, create a method to put the song being played

	Create another Class to handle the playlist
	Define methods for initializing, number of tracks, how to add/remove a song,
	 be sure to pull the song from the array, as well as play all songs

=end


# Initial Solution

class Song
	attr_reader :title, :artist

	def initialize(title, artist)
		@title = title
		@artist = artist
	end

	def play
		puts "This is #{@title} by #{@artist}"
	end
end

class Playlist

	attr_accessor :playlist, :songs

	def initialize(*songs)
		@playlist = Array.new
		@playlist += songs
		
	end

	def num_of_tracks
		@playlist.length
	end

	def add(*songs)
		@playlist += songs
	end

	def remove(*songs)
		@playlist.delete(songs)
	end

	def includes? songs
		@playlist.include?(songs)
	end

	def play_all
		puts "Playing #{playlist.each}"
	end
end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display




# Reflection 

=begin
	This challenge took me a bit longer than I thought. 
	I was able to use the driver code to frame my two classes fast and then I had to begin to think what I wanted within those methods.
	This was great ruby practice.

=end