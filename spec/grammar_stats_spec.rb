require 'grammar_stats'

RSpec.describe GrammarStats do
		describe "#check(text)" do
    it "Checks if text begins with a capital letter and returns true" do
        grammar_check = GrammarStats.new
        result = grammar_check.check("Hello my name is Aamir.")
    expect(result).to eq true
    end

		describe "#check(text)" do
			it "returns false if text begins with a lowercase letter and a full stop" do
					grammar_check = GrammarStats.new
					result = grammar_check.check("hello my name is Aamir.")
			expect(result).to eq false
			end

			describe "#check(text)" do
				it "returns false if text begins with a capital letter but no full stop at the end" do
						grammar_check = GrammarStats.new
						result = grammar_check.check("Hello my name is Aamir")
				expect(result).to eq false
				end

			describe "#check(text)" do
				it "returns false if text has no lowercase letter at the start or full stop at the end" do
						grammar_check = GrammarStats.new
						result = grammar_check.check("hello my name is aamir")
				expect(result).to eq false
				end
		end
	end

	describe "#percentage_good" do
    it "gives the percentage of correct grammar checks" do
      grammar_check = GrammarStats.new
      grammar_check.check("Hello, I am Aamir.")
      grammar_check.check("Hello, I am aamir")
      expect(grammar_check.percentage_good).to eq 50
		end
end
end
end
end
