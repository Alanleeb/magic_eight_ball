require 'pry'
class MagicEightBalls
  attr_accessor :ans, :user, :name

  def initialize
    @ans = ["Yes", "Definately", "No", "Maybe", "I'm Busy Come Back Later."]
    #binding.pry
    game_menu
  end

  def start_game
    puts "#{@name}, Welcome To The FUTURE."
    questions
  end

  def add_answers
  puts "Add an answer: "
  add = gets.strip
  #@ans = ["Yes", "Definately", "No", "Maybe", "I'm Busy Come Back Later."]
  @ans << add
   puts "Your answer has been added."
   puts @ans
   game_menu
  end

  def game_menu
    puts "=== MENU ==="
    puts '1: Start Game'
    puts '2: Add Answers'
    puts '3: Exit'

    case gets.to_i
    when 1
      puts "What is your name? "
      @name = gets.strip
      start_game
    when 2
     add_answers
    when 3
      puts "Thanks for playing!"
      exit
    else
      puts "Invalid Entry. Choose from the menu."
      game_menu
    end
  end

  def questions
    puts "Ask me anything you want to know."
<<<<<<< HEAD
    question = gets.strip
    # puts answer.ans
    # puts @ans.sample
=======
    ask = gets.strip
    binding.pry
    puts @ans.sample
>>>>>>> moved all functions into one class
    try_again
    end

  def try_again
    puts "Would you like to ask another question? Yes, No, or b, for back to menu"
    choice = gets.strip.downcase
    case choice
    when "yes"
      questions
    when "no"
      puts "thanks for playing!"
      exit
    when "b"
      game_menu
    else puts "Not a Valid Entry, Try Again"
      try_again
    end
  end
end

MagicEightBalls.new
