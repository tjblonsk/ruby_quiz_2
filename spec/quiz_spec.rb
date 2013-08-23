require_relative '../quiz'
#  __    __    _______  __    __
# |  |  |  |  /  _____||  |  |  |
# |  |  |  | |  |  __  |  |__|  |
# |  |  |  | |  | |_ | |   __   |
# |  `--'  | |  |__| | |  |  |  |
#  \______/   \______| |__|  |__|

describe "a quiz" do
  it "should be about Ruby and Testing in Rspec" do
    expect(QUIZ_TOPICS).to include("ruby")
    expect(QUIZ_TOPICS).to include("rspec")
    expect(QUIZ_TOPICS).to include("testing")
  end
end

# more in quiz.rb!


describe "add" do
  it "should add numbers to an array" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(2)
    expect(quiz.numbers.length).to be(2)
  end
end


describe "numbers array" do
  it "should store numbers added" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(2)
    expect(quiz.numbers[1]).to be(2)
  end
end


describe "numbers array" do
  it "should only store numbers" do
    quiz = Quiz.new
    quiz.add("8")
    quiz.add("word")
    expect(quiz.numbers.length).to be(1)
  end
end


describe "numbers array" do
  it "should only store numbers" do
    quiz = Quiz.new
    quiz.add([8, "9", "ten", "word"])
    expect(quiz.numbers.length).to be(2)
  end
end


