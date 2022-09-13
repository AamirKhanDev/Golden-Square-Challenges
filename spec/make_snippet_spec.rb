require "make_snippet"

RSpec.describe "make_snippet method" do
  it "Create an empty string" do
  result = make_snippet("")
  expect(result).to eq ""
  end

  it "return a string of 5 words" do
    result = make_snippet("hello my name is Aamir")
    expect(result).to eq "hello my name is Aamir"
  end

  it "return a string of 5 words with ... given 6 words or more" do
  result = make_snippet("Hello my name is Aamir Khan")
  expect(result).to eq "Hello my name is Aamir..."
end
end