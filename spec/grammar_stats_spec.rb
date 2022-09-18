require 'grammar_stats'

RSpec.describe do
    it "Checks if text begins with a capital letter" do
    grammar = GrammarStats.new
    expect(grammar).to eq "Hello my name is Aamir"
    end
end

