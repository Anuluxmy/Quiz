require 'quiz.rb'
describe Quiz do
  it "should display a question" do
    quiz = Quiz.new()
    expect{ quiz.question }.to output("What is the capital of France?\n").to_stdout
  end

  it "should get user input for answer" do
    quiz = Quiz.new()
    allow(STDIN).to receive(:gets) { "PARIS" }
  end

  it "should show correct if it is the answer" do
    quiz = Quiz.new()
    expect{ quiz.answer("PARIS") }.to output("correct\n").to_stdout
  end

  it "should show incorrect if it is not the answer" do
  quiz = Quiz.new()
  expect{ quiz.answer("LONDON") }.to output("incorrect\n").to_stdout
 end
end
