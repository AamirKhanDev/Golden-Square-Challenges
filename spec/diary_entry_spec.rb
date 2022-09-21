require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs" do
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      expect(diary_entry.title).to eq "my_title"
      expect(diary_entry.contents).to eq "my_contents"
      end
  

      describe "#count_words" do
        it "counts the words in all the diary entries' contents" do
        diary_entry = DiaryEntry.new("my_title", "one two three four")
        expect(diary_entry.count_words).to eq 4
        end
      end

      describe "#count_words" do
        it "returns zero if contents are empty" do
        diary_entry = DiaryEntry.new("my_title", "")
        expect(diary_entry.count_words).to eq 0
        end
      end

      describe "#reading_time" do
        it "returns one if contents is one word" do
        diary_entry = DiaryEntry.new("my_title", "one")
        expect(diary_entry.reading_time(2)).to eq 1
        end
      end

      describe "#reading_time" do
        it "returns a reading time for the contents" do
        diary_entry = DiaryEntry.new("my_title", "one two three four five")
        expect(diary_entry.reading_time(2)).to eq 3
        end
      end

      describe "#reading_time" do
        it "returns zero if contents are empty" do
        diary_entry = DiaryEntry.new("my_title", " ")
        expect(diary_entry.reading_time(2)).to eq 0
        end
      end
    end
  
    

