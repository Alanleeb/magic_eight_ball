

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
    try_again
    end

  def try_again
    puts "Would you like to ask another question? Yes or No?"
    choice = gets.strip.downcase
    if choice == "yes"
      questions
    elsif choice =="no"
      exit
    else puts "Not a Valid Entry, Try Again"
      try_again
    end
  end


end

MagicEightBalls.new
