def clear_the_terminal 
  system("clear")
end
def get_name 
  puts "Welcome to the Golf Handicap Calculator\n"
  print "Hey friend, what should I call you?\n> "
  gets.chomp
end
def check_name (name)
  puts "Hello, #{name}, is that right?\n"
  puts "1. Yes"
  puts "2. No"
  puts "3. I don't want one of those fancy names, just call me 'friend'"
  print "> "
  confirmed = gets.chomp.to_i
  if confirmed == 1
    puts "Great, let's get started!\n"
    user_stated_name = name
  elsif confirmed == 2
    puts "Oh, I'm sorry, I must have misheard you. What should I call you?\n"
    print "> "
    check_name(gets.chomp)
  elsif confirmed = 3
    user_stated_name = "Friend"
    puts "hey friend, let's get started!\n"
  else
    clear_the_terminal
    puts "Let's try that from the top, shall we?\n\n"
    app()
  end
  user_stated_name
end
def prompt_user_for_scores (name)
  puts "Hi #{name}, Start by entering your scores for the last 20 rounds of golf.\n"
  puts "It's ok if you don't have 20 rounds, just enter at least 54 holes worth of scores to meet the minimum required by the USGA.\n"
  puts "If you have 9-hole rounds, enter each of your 9-hole scores as a single round and we will worry about the math later.\n"
end
def get_scores
  print "> "
  # ask for scores
  # save scores to array
  # Course name with Score, slope, rating, and 9-hole or 18-hole course length
  return "this is where the scores will go"
end

def app ()
  total_hole_count = 0
  clear_the_terminal
  puts "If you're reading this, you're too early. Please come back later."
  user_stated_name = get_name
  userName = check_name (user_stated_name)
  prompt_user_for_scores(userName)
  user_scores = get_scores # get scores from user recursively until they stop entering scores || total_hole_count >= 360
 
  # tidyScores = arrayManipulator(scores)
  # tidyScores.empty? 

  # avgScore = scoreAverage(tidyScores)
  # puts avgScore
  # return avgScore
  exit()
end
app