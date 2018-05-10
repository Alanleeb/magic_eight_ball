require 'pry'


class Answers
  attr_accessor :input, :ans

  def initialize
    @ans = ["Yes", "Definately", "No", "Maybe", "I'm Busy Come Back Later."]
    add_answers
  end

  def add_answers
    puts "Add an answer: "
    @ans << gets.strip
    puts "Your answer has been added."
    menu = MagicEightBalls.new
    menu.game_menu

  end

end

class MagicEightBalls
  attr_accessor :ans, :user, :name

  def initialize
    game_menu
  end

  def start_game
    puts "Welcome To The FUTURE."
    questions
  end

  def game_menu
    puts "=== MENU ==="
    puts '1: Start Game'
    puts '2: Add Answers'
    puts '3: Exit'

    case gets.to_i
    when 1
      start_game
    when 2
     Answers.new
    when 3
      exit
    else
      puts "Invalid Entry. Choose from the menu."
      game_menu
    end
  end

  def questions
    puts "Ask me anything you want to know."
    question = gets.strip
    #puts answer.ans
    # puts @ans.sample
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
