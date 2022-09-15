require 'design_task_one'

RSpec.describe "calculate_reading_time method" do
    context "given an empty string" do
        it "returns zero" do
            result = calculate_reading_time("")
            expect(result).to eq 0
        end
    end

   context "given a text of under 200 words" do
     it "returns one" do
        result = calculate_reading_time("one")
        expect(result).to eq 1
     end
end
end