#problem
#As a user
#So that I can keep track of my music listening
#I want to add tracks I've listened to and see a list of them.

class MusicList
   def initialize
  @tracks = []
end

def list
return @tracks
end

def addTrack(track)
@tracks << track
end
end


