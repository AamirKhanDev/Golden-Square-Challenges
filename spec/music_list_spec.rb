require 'music_list'

RSpec.describe do
  context "Nothing to add into the list" do
  it "Will return a blank array" do
  track_list = MusicList.new
  expect(track_list.list).to eq []
    end
  end

  context "Add one track to the list" do
    it "Will return a track that has been entered into an array" do
    track_list = MusicList.new
    track_list.addTrack("Linkin Park - Papercut")
    expect(track_list.list).to eq ["Linkin Park - Papercut"]
      end
    end

    context "Add two tracks to the list" do
      it "Will return two tracks that has been entered into an array" do
      track_list = MusicList.new
      track_list.addTrack("Linkin Park - Papercut")
      track_list.addTrack("Linkin Park - Numb")
      expect(track_list.list).to eq ["Linkin Park - Papercut", "Linkin Park - Numb"]
        end
      end
end





# 3 - more than 1 music track was input
#track_list = MusicList.new
#track_list.addTrack("Linkin Park - Papercut")
#track_list.addTrack("Linkin Park - Numb")
#expect(track_list.list).to eq ["Linkin Park - Papercut", "Linkin Park - Numb"]