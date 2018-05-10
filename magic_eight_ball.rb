

class MagicEightBalls
  attr_accessor :ans, :user, :name

  def initialize
    @ans = ["Yes", "Definately", "No", "Maybe", "I'm Busy Come Back Later."]

    puts "Welcome To The FUTURE."
    questions
  end

  def questions
    puts "Ask me anything you want to know."
    question = gets.strip
    puts @ans.sample
  end


end

MagicEightBalls.new
