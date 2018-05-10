
class Answers
  attr_accessor :input

  def initialize
    @ans = ["Yes", "Definately", "No", "Maybe", "I'm Busy Come Back Later."]
    add_answers
  end

  def add_answers
    puts "Add an answer: "
      @ans << gets.strip
      puts @ans.last
  end

end

class MagicEightBalls
  attr_accessor :ans, :user, :name

  def initialize
    game_menu
    answer = Answers.new
    #@add_answers = Answers.new
    puts "Welcome To The FUTURE."
    questions
  end

  def game_menu
    puts "=== MENU ==="
    puts '1: Start Game'
    puts '2: Add Answers'
    puts '3: Exit'
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
