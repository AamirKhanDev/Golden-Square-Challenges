require 'design_task_two'

RSpec.describe "spell_check method" do
  context "Checks if anything is entered"
    it "returns blank" do
     result = spell_check("")
     expect(result).to eq ""
  end
end

  context "Capitalises the first word of each string and adds punctuation" do
    it "returns capital letter and rest undercase with a full stop" do
    result = spell_check("hello it's time to play")
    expect(result).to eq "Hello it's time to play."
    end
  end

  
