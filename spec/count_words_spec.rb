require 'count_words'

RSpec.describe "count_words method" do
    it "Counts 0 words if nothing is entered" do
    result = count_words("")
    expect(result).to eq 0
    end

    it "Counts 5 words if 5 words are entered" do
        result = count_words("Hello my name is Aamir")
        expect(result).to eq 5
        end
    end