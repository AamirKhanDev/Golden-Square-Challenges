class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @tracks << track
  end

  def all
    return @tracks
  end
  
  def search_by_title(keyword) # keyword is a string
    @tracks.select do |track|
      track.title.include? (keyword)
    end
  end
end