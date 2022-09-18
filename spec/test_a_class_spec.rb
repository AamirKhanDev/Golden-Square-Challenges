require 'test_a_class_exercise'

RSpec.describe do
    it "constructs" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect(diary_entry.title).to eq "my_title"
        expect(diary_entry.contents).to eq "my_contents"
    end
    describe "word count" do
    it "counts words in contents" do
        diary_entry = DiaryEntry.new("my_title", "some contents here")   
        expect(diary_entry.count_words).to eq 3
    end
    end
    it "returns zero when no words" do
        diary_entry = DiaryEntry.new("my_title", "")
        expect(diary_entry.count_words).to eq 0
    end
end

    describe "@reading_time method" do
        it "calculates reading time" do
          diary_entry = DiaryEntry.new("my_title", "one " * 550)    
					expect(diary_entry.reading_time(200)).to eq 3
        end
    end

		context "given a wpm of 0" do
			it "fails" do
				diary_entry = DiaryEntry.new("my_title", "some contents here") 
				expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
			end
		end

		context "given a wpm of 0" do
			it "fails" do
				diary_entry = DiaryEntry.new("my_title", "some contents here") 
				expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above zero."
			end
		end
	
		describe "@reading_chunk method" do
			it "calculates how much a reader could read in 5 minutes" do
			diary_entry = DiaryEntry.new("my_title", "one two three")
			chunk = diary_entry.reading_chunk(200, 1)
			expect(chunk).to eq "one two three"
		end
	end

	context "with contents unreadable within time frame" do
		it  "returns chunk of contents readable in time frame" do
			diary_entry = DiaryEntry.new("my_title", "one two three")
			chunk = diary_entry.reading_chunk(2, 1)
			expect(chunk).to eq "one two"
		end
	

		it "returns the next chunk on the next call" do
		diary_entry = DiaryEntry.new("my_title", "one two three")
		diary_entry.reading_chunk(2, 1)
			chunk = diary_entry.reading_chunk(2, 1)
			expect(chunk).to eq "three"
	end


		it "restarts after reading the whole contents" do
			diary_entry = DiaryEntry.new("my_title", "one two three")
			diary_entry.reading_chunk(2, 1)
			diary_entry.reading_chunk(2, 1)
			chunk = diary_entry.reading_chunk(2, 1)
			expect(chunk).to eq "one two"
		end

		it "restarts if it finishes exactly on the end" do
			diary_entry = DiaryEntry.new("my_title", "one two three")
			diary_entry.reading_chunk(2, 1)
			diary_entry.reading_chunk(1, 1)
			chunk = diary_entry.reading_chunk(2, 1)
			expect(chunk).to eq "one two"
		end
	end