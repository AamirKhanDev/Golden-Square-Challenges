require 'diary'
require 'diary_entry'

RSpec.describe 'integration' do
  context "when we add a diary entry" do
    it "comes back in the list" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
      diary.add(diary_entry_1)
      expect(diary.all).to eq [diary_entry_1]
      end
    end

    describe "#count_words" do
      it "counts the words in all the diary entries' contents" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title", "my contents")
      diary.add(diary_entry_1)
      expect(diary.count_words).to eq 2
      end
    end

    describe "#reading_time" do
      it "returns a reading time in wpm" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.reading_time(2)).to eq 3
  end
end
end
