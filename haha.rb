def intro
    puts "Welcome to the Fortune Teller game! Don't give up hope if you don't receive the answers that you wanted!"
    puts " "
    puts "Please enter a number from the list below to allow us to assist you! Good luck!"
    puts "----------------------------------------------------"
    puts "1.) I want to play"
    puts ""
    puts "2.) Instructions"
    puts ""
    puts "3.) Quit"
end

def instructions1
    puts "The Fortune Teller predicts your future with special techniques. Goodluck! 
    To Play:
    1.) You must select one of the questions from the drop down menu
    2.) After selecting, our fortune teller will take a few moments to predict your furture. 

    Press the number 1 to start playing!

    Have fun!
    "
end

def displayQ
  fortuneQ = ["Who will I marry?", "How many children will we have?", "When will I meet my soul mate?", "When will I be rich?", "When will I win the lottery?", "How do I make my ex come back?", "Are there big changes in my future?", "Am I on the right path for my career?"]
  num = 0
  fortuneQ.each do |ques|
  num += 1
  puts ""
  puts "#{num}.) #{ques}"
  end
end
def oneF
  puts "---------------------------------------"
  puts "You are only allowed one fortune a day. Have a good rest of your day!"
end

def playGame
  intro
  hello = true
  while hello 
    choice1 = gets.chomp
    if choice1 == "1"
      puts "Please choose from the questions below."
      displayQ
      qC = gets.chomp
      puts ""
      if qC == "1"
        randNum1 = rand(3)
        if randNum1 == 1
          puts "The spirits say most get what they deserve"
        elsif randNum1 == 2
          puts "I see you getting married to someone who you have wanted for a while but don't know it."
        else
          puts "It cannot be determined now. Come back later"
        end
        oneF
        hello = false

      elsif qC == "2"
        randChild = rand(5)
        puts "My sources are telling me you will have #{randChild} kid(s)"
        puts "---------------------------------------"
        puts "You are only allowed one fortune a day. Have a good rest of your evening!"
        hello = false
      elsif qC == "3"
        randS = rand(3)
        if randS == 1
          puts "My sources tell me it is sometime soon"
        elsif randS == 2
          puts "My sources say it is not for a while"
        else
          puts "My sources say you are not going to find a soulmate. Instead you will explore your options for a long time. "
        end
        oneF
        hello = false
      elsif qC == "4"
        randRich = rand(3)
        if randRich == 1
          puts "My sources tell me it is sometime soon"
        elsif randRich == 2
          puts "My sources say it is not for a while"
        else
          puts "My sources say you are not going to be rich. You will be full of riches but not those kind."
        end
        oneF
        hello = false
      elsif qC == "5"
        randL = rand(3)
        if randL == 1
          puts "My sources tell me it is sometime soon"
        elsif randL == 2
          puts "My sources say it is not for a while"
        else
          puts "My sources say you are not going to win the lottery. You will gain value another way."
        end
        oneF
        hello = false
      elsif qC == "6"
        randX = rand(3)
        if randX == 1
          puts "My sources say use the people that you never thought could help you."
        elsif randX == 2
          puts "My sources say it is rare for you to get your ex to come back."
        else
          puts "My sources say it's time to find someone new, someone who will make you happier."
        end
        oneF
        hello = false
      elsif qC == "7"
        randFuture = rand(3)
        if randFuture == 1
          puts "Yes"
        elsif randFuture == 2
          puts "Perhaps"
        else
          puts "No"
        end
      elsif qC == "8"
        randP = rand(3)
        if randFuture == 1
          puts "Yes"
        elsif randFuture == 2
          puts "Perhaps"
        else
          puts "No"
        end
        oneF
        hello = false
      else
        puts "Please choose a correct option by typing in the number next to the question you want answered."
      end
    elsif choice1 == "2"
      instructions1
    elsif choice1 == "3"
      hello = false
      exit
    else
      puts "You did not enter in a correct choice. Please choose from the options above to allow us to assist you"
    end
  end
end

 def intro
    puts "Welcome to Magic 8 Ball! Don't give up hope if you don't receive the answers that you wanted!"
    puts " "
    puts "This game requires 2 tickets. Please insert them now."
    puts ""
    puts "Please enter a number from the list below to allow us to assist you! Good luck!"
end

def instructions
    puts "The Magic 8-Ball is a toy used for fortune-telling or seeking advice. 
    
    1.) To play, you must give ATLEAST 2 tickets
    2.) After that, you must ask me a question that can be answered with a yes or no.
    3.) Goodluck and may the angels be with you hehe. 
    "
end
 def gamerGirlxD
     magicAnswers = ["It is certain", "It is decidely so.","Without a doubt", "Yes - definitely", "You may rely on it", "As I see it, yes.", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy, try again", "Ask again later.", "Better. not tell you now.", "Cannot predict now.", "Concentrate and ask again", "Don't count on it.", "My reply is no", "My sources say no", "Outlook not so good.", "Very Doubtful"]
     intro
     hi = true
    while hi == true
      puts ""
      puts "1.) I'm inserting tickets now"
      puts ""
      puts ""
      puts "2.) I changed my mind, I'm going home"
      puts ""
      puts ""
      puts "3.) Instructions"
      nums = gets.chomp
      if nums == "1"
        puts "Please enter in 5 tickets or less (Ex. entering in the number '4')"
        tix = gets.chomp
        if tix > "5"
          puts "Please enter in a valid number between 0 and 5"
        elsif tix < "2"
          puts "You do not have enough tickets!"
        else
          puts "#{tix} tickets taken! Your extra tickets have been returned so please check the ticket hand."
          puts "Now... ask me a question. It must be a yes or no question or else I will not be able to answer"
          question = gets.chomp
          randNum = rand(19)
          if question.downcase.start_with?("am")
            puts magicAnswers[randNum]
          elsif question.downcase.start_with?("is")
            puts magicAnswers[randNum]
          elsif question.downcase.start_with?("will")
            puts magicAnswers[randNum]
          elsif question.downcase.start_with?("can")
            puts magicAnswers[randNum]
          elsif question.downcase.start_with?("are")
            puts magicAnswers[randNum]
          elsif question.downcase.start_with?("does")
            puts magicAnswers[randNum]
          elsif question.downcase.start_with?("have")
            puts magicAnswers[randNum]
          else  
            puts "You did not enter in a correct close  ended question. Retype your question "
            resA = gets.chomp
          end
      end
        puts ""
      elsif nums == "2"
        puts "We're sad to see you go! Come back again for a blast!"
        hi = false
        exit
      elsif nums == "3"
        instructions
      else 
        puts "Please enter a correct letter or press 2 to exit this session"
      end
        puts "If you want to play , enter 'play' or enter 'exit' to leave the game."
        finalD = gets.chomp
        if finalD.downcase == "play"
          puts "Please insert 2 tickets to play me again."
        elsif finalD.downcase == "exit"
          hi = false
          puts "Goodbye!"
          exit
        else
          puts "That was not a valid response. Goodbye."
          hi = false
          exit
        end
      end
end
      def option_a
        puts "give me a verb that ends in 'ing'"
        verbing1 = gets.chomp
        puts "give me a holiday"
        holiday1 = gets.chomp 
        puts "give me the name of a person"
        person1 = gets.chomp
        puts "give me a place"
        place1 = gets.chomp
        puts "give me an adjective"
        adjective1 = gets.chomp
        puts "give me another adjective"
        adjective2 = gets.chomp
        puts "give me plural animals"
        pluralanimal1 = gets.chomp
        puts "give me a noun"
        noun1 = gets.chomp
        puts "give me the name of a person"
        person2 = gets.chomp
        puts "give me a verb"
        verb1 = gets.chomp
        puts "give me a verb that ends in 'ed'"
        verbed1 = gets.chomp
        puts "give me an adjective"
        adjective2 = gets.chomp
        puts "give me a verb"
        verb2 = gets.chomp
        puts "give me a plural noun"
        pluralnoun1 = gets.chomp
        puts "give me a past verb"
        pastverb1 = gets.chomp
        puts "give me a noun"
        noun2 = gets.chomp
        puts "give me another noun"
        noun3 = gets.chomp
        puts "give me another noun"
        noun4 = gets.chomp
        puts "give me another noun"
        noun5 = gets.chomp
        puts "give me another noun"
        noun6 = gets.chomp
        puts "give me a place"
        place2 = gets.chomp
        puts "give me the name of a person"
        person3 = gets.chomp
        puts "give me the name of another person"
        person4 = gets.chomp
        puts "AND LASTLY give me a verb that ends in 'ing'"
        verbing2 = gets.chomp
        puts "So I was #{verbing1}! I'm a kid, I'm supposed to snoop, especially arounad #{holiday1} time! What #{person1} doesn't 
        snoop? I just so happened to be in our #{place1}. Normally I'm not up there, it's  #{adjective1} and #{adjective2}. 
        Plus there are #{pluralanimal1}, yuck! I couldn't help myself! There it was right by my little sister's old #{noun1}. 
        Guess #{person2} didn't think I would #{verb1} it. I #{verbed1} it, it felt #{adjective2}. Should I #{verb2} it? 
        Looking closer I saw some #{pluralnoun1}. I got even closer and #{pastverb1} a #{noun2}! The hidden #{noun3} was alive! 
        A yelp came from the #{noun4}. I opened the #{noun5} and to my surprise a #{noun6} was inside! Guess who else was hidden 
        in the #{place2}? #{person3} and #{person4} just knew I was #{verbing2}!"
      end
      
      def option_b
        puts "give me an adjective"
        adjective3 = gets.chomp
        puts "give me a place"
        place3 = gets.chomp
        puts "give me a plural noun"
        pluralnoun2 = gets.chomp
        puts "give me an adjective"
        adjective4 = gets.chomp
        puts "give me an emotion"
        emotion1 = gets.chomp
        puts "give me a past tense verb"
        verbed2 = gets.chomp
        puts "give me a food"
        food1 = gets.chomp
        puts "give me a place"
        place4 = gets.chomp
        puts "give me a verb"
        verb3 = gets.chomp
        puts "give me an adjective"
        adjective5 = gets.chomp
        puts "give me a current issue"
        currentissue = gets.chomp
        puts "gie me a noun"
        noun7 = gets.chomp
        puts "give me an adjective"
        adjective6 = gets.chomp
        puts "give me a verb"
        verb4 = gets.chomp
        puts "On my first day of Kode With Klossy I was feeling very #{adjective3}. I walked into the #{place3} and saw so many 
        #{pluralnoun2}. Everyone was so #{adjective4} and I was really #{emotion1}. So I #{verbed2} to the snack table to eat some 
        #{food1} and I felt a little better. There were people from all parts of the coast and even #{place4}!! So, we began learning
        and stuff and I realized that you can do a lot with coding. Honestly at this rate I could #{verb3} the world > : D. The brain 
        breaks were super #{adjective5} and help me get my mind off of #{currentissue}. Sometimes I realize how detailed you have to be 
        with koding and you have to make sure you take every #{noun7} into consideration. Anyways, it's been #{adjective6} so far and I
        hope I learn to #{verb4} soon. I love Kode With Klossy ツ!"
      end
        
        
      
      def mad_libs
        puts "Hello! Welcome to Mad Libs :) These are supposed to be funny but I honestly don't know how this is gonna go, so lets hope it goes well. Let's begin! Pick option a or b!"
        option = gets.chomp
        if option == "a"
          puts option_a
        elsif option == "b"
          puts option_b
        end
      end
      
      

     def begin_simulation
       puts "wow! the desert is so nice :). It's too bad you don't have any food or water! Would you like to walk left or right"
        direction = gets.chomp
          if direction == "right"
            puts "Uh oh! The mafia found you and threw you in some quick sand. I'm sorry, you are dead. Game Over, returning to home" 
            sleep(2)
            puts story_arkade
          elsif direction == "left"
           puts "Awesome! You found a cactus. It might have some water in it! You see a man approaching and you think he can help. What do you do? 'ask for help' or 'run'?"
            help = gets.chomp
              if help == "ask for help"
                puts "darn! sometimes you can't trust people. The man stole the cactus you found and ran away. Game over, returning to home "
                sleep(2)
                puts story_arkade
              elsif help == "run"
                puts "Good job! That man was gonna steal your cactus. Thankfully you ran away and ran into a water reclamation plant. Turns out youre not to far from civilization. Drinking the water might be risky. You don't know how much has been filtered. Do you 'drink it anyway' or 'wait till you know its clean"
                    water = gets.chomp
                      if water == "wait till you know it's clean"
                        puts "SUCKS FOR YOU YOU SHOULD HAVE TAKEN THE WATER YOU WERE OFFERED! The water was clean dummy. You died of thirst. Sorry. Returning to home"
                        sleep(2)
                        puts story_arkade
                      elsif water == "drink it anyway"
                        puts "Wow! You're a smart kookie. Turns out the water was actually a teleportation potion. You're back home now! Good job! You win!"
                        sleep(5)
                        puts story_arkade
                      end
                end
          end
      end
  
 
      
    
          
       
        
     
     
     
     def my_story
       puts "Hi! Welcome to my story! Are you ready to begin?"
        ready = gets.chomp
          if ready == "yes"
            puts begin_simulation
          elsif ready == "no"
            puts "I'm sorry about that. Try again when you are"
            puts my_story
          end
      end


def story_games
  puts "Welcome to story time :). Would you like to play 'mad libs'(ml) or 'my story'(ms)?"
      option = gets.chomp
      if option == "ml"
        puts mad_libs
      elsif option == "ms"
        puts my_story
      end
end
sols = ["ACFBBDHDCGFGHAEE", "BFGFADHBCEAGECHD", "ACFBBDHDCGFGHAEE".reverse, "BFGFADHBCEAGECHD".reverse]
sol = sols.shuffle.first
$rows = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
$cols = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
$diags = [[0, 4, 8], [2, 4, 6]]

#checks if there is a match
def match(l1, l2)
  if l1 == l2
    return true
  else
    return false
  end
end

#displays the puzzle
def show(pzl)
  puts pzl[0..3] + "\n" + pzl[4..7] + "\n" + pzl[8..11] + "\n" + pzl[12..15]
end

#checks if someone has won, returns the token of the winner ("X" or "O")
#returns empty string if game isn't over or there is no winner
def game_over(game)
  #checks each row
  $rows.each do |row|
    if game[row[0]] == game[row[1]]  && game[row[1]] == game[row[2]] && game[row[0]] != "."
      return game[row[0]]
    end
  end
  #checks each column
  $cols.each do |col|
    if game[col[0]] == game[col[1]] && game[col[1]]== game[col[2]] && game[col[0]] != "."
      return game[col[0]]
    end
  end
  #checks each diagonal
  $diags.each do |diag|
    if game[diag[0]] == game[diag[1]] && game[diag[1]] == game[diag[2]] && game[diag[0]] != "."
      return game[diag[0]]
    end
  end
  return ""
end

#makes a move
def make_move(game, turn)
  #asks player for a position 1-9
  puts "#{turn}'s Turn! Make a move: "
  move = gets.chomp.to_i - 1
  game = game[0, move] + turn + game[move+1..9]
  puts game[0..2] + "\n" + game[3..5] + "\n" + game[6..8]
  puts "------"
  return game
end

#prints out who the winner is
def winner(game)
  wins = game_over(game)
  if wins == "X"
    puts "X Wins!"
  elsif wins == "O"
    puts "O Wins!"
  else
    puts "It's a tie!"
  end
end

def memory
  puzzle = "................"
  turns = 0
  puts "Welcome to the memory matching game! You'll have 10 seconds to memorize the board and then be asked to name the pairs. For each turn, type in 2 indices (0-15) in increasing order separated by a space(Ex => 1 14)\n\n"
  sleep(10)
  puts "Ready?\n"
  sleep(1)
  puts "Set?\n"
  sleep(1)
  puts "Go!\n\n"
  sleep(1)
  show(sol)
  sleep(10)
  puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
  show(puzzle)
  while puzzle.count(".") > 0
    puts "Pick a pair!"
    pair = gets.chomp.split
    p1 = pair[0].to_i
    p2 = pair[1].to_i
    pzl = puzzle[0, p1] + sol[p1] + puzzle[p1+1..p2-1] + sol[p2] + puzzle[p2+1..15]
    show(pzl)
    if match(sol[p1], sol[p2])
      puts "It's a match!"
      puzzle = pzl
    else
      puts "Not a match!"
      sleep(3)
      puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
      show(puzzle)
    end
    turns += 1
    sleep(2)
    puts "\n\n\n"
  end
  show(puzzle)
  puts "Congrats! You won! You figured it out in #{turns} turns!"
end

def tic_tac_toe
  board = "........."
  #gets input to determine who goes first
  puts "Welcome to Tic Tac Toe! Let's play!"
  puts "Who goes first? X or O?"
  turn = gets.chomp.upcase
  puts board[0..2] + "\n" + board[3..5] + "\n" + board[6..8]
  #while no one has won and the board isn't all filled up
  while game_over(board) == "" and board.count(".") >= 1
    if turn == "X"
      board = make_move(board, "X")
      turn = "O"
    else
      board = make_move(board, "O")
      turn = "X"
    end
  end
  winner(board)
end

def puzzle_games
  stay = true
  while stay == true
    puts "Welcome to the Puzzle Game Center!\nPick a game to play!"
    puts "1. One Player Memory Matching Game\n2. Two Player Tic Tac Toe"
    choice = gets.chomp.to_i
    if choice == 1
      memory
    elsif choice == 2
      tic_tac_toe
    end
    puts "Stay in Puzzle Game Center?"
    answer = gets.chomp.downcase
    if answer == "no"
      puts "Redirecting back to arkade home..."
      stay = false
    end
  end
end
# this is for ride safety

def ride_safety
  puts "Ok! What ride would you like to report?"
  puts "a. Twister Twizzlers"
  puts "b. The cupcake ride"
  puts "c. Alien Abduction"
  puts "d. The tunnel of death"
  puts "e. Magical mystery ride"
  the_rides = gets.chomp
  if the_rides == "a"
    puts "Ok. What would you like to report?"
    report_rides = gets.chomp
    puts "Thank you for your feedback. This is what you wanted to report:"
    puts "#{report_rides}"
  end
end

def personal_safety
  puts "Ok. Do you need:"
  puts "a. Immediate assistance"
  puts "b. Feedback to report"
  personal_feedback = gets.chomp
  if personal_feedback == "a"
    puts "Ok. Call 1-800-688-9180"
  else
    puts "Ok. What would you like to report?"
    report_safety = gets.chomp
    puts "Thank you for your feedback. This is what you wanted to report:"
    puts "#{report_safety}"
  end
end

def main_safety
  puts "Ok! Would you like to report:"
  puts "a. Rides"
  puts "b. Personal safety"
  the_safety = gets.chomp
  if the_safety == "a"
    ride_safety
  else
    personal_safety
  end
end
# this is for height

def height_time
  puts "Hello! This is the magical mystery ride. Let's try see if you go on this ride."
  puts "What's your height? Please input it like so: five feet is 'five foot'"
  puts "Input 'five foot two' if you're five foot five"
  height_kid = gets.chomp.downcase
  if height_kid == "five foot" || heigh_kid == "five foot two" || height_kid == "five foot six"
    puts "You can go on this ride! Congratulations!"
  else
    puts "Sorry, you can't go on the ride."
end

def ne  end
w_rides
  puts "Would you like to check out another ride? We have the following rides available:"
  puts "a. Twister Twizzlers"
  puts "b. The cupcake ride"
  puts "c. Alien Abduction"
  puts "d. The tunnel of death"

  ride = gets.chomp
  if ride == "a"
    puts "Ok. Let's go on the Twizzler's ride!"
    puts "What's your height? Please input it like so: five feet is 'five foot'"
    puts "Input 'five foot two' if you're five foot five"
    height_twizzler = gets.chomp
     if height_twizzler >= "five foot two" || height_twizzler >= "five foot four" || height_twizzler >= "five foot six"
      puts "Ok! You can go on the ride."
    else
      puts "Sorry. You're not ready for the twisting twizzlers yet."
    end
    puts "Would you like to check out another ride? We have the following rides available:"
    puts "b. The cupcake ride"
    puts "c. Alien Abduction"
    puts "d. The tunnel of death"
    the_one = gets.chomp
    if the_one == "b"
      puts "Ok. Let's go on the cupcake ride!"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_for_cup = gets.chomp
      if height_for_cup >= "four foot" || height_for_cup == "four foot three" || height_for_cup == "four foot eight"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. No cupcakes for you!"
      end
    elsif the_one == "c"
      puts "Ok. Ready to get abducted?"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_for_abduct = gets.chomp
      if height_for_abduct >= "four foot seven" || "five foot" || "five foot three"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. The aliens can't abduct you today."
      end
    else
      puts "Ok. Tunnel of death it is."
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_for_tunnel = gets.chomp
      if height_for_tunnel >= "five foot two" || "five foot five" || "five foot seven"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. No doom for you."
      end
    end
  elsif ride == "b"
    puts "Ok. Let's go on the cupcake ride!"
    puts "What's your height? Please input it like so: five feet is 'five foot'"
    puts "Input 'five foot two' if you're five foot five"
    height_cup = gets.chomp
    if height_cup >= "four foot" || "four foot three" || "four foot eight"
      puts "Ok! You can go on the ride."
    else
      puts "Sorry. No cupcakes for you!"
    end
    puts "Would you like to check out another ride? We have the following rides available:"
    puts "a. Twister Twizzlers"
    puts "c. Alien Abduction"
    puts "d. The tunnel of death"
    the_second = gets.chomp
    if the_second == "a"
      puts "Ok. Let's go on the Twizzler's ride!"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_twizzler_second = gets.chomp
      if height_twizzler_second >= "five foot two" || "five foot four" || "five foot six"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. You're not ready for the twisting twizzlers yet."
      end
    elsif the_second == "c"
      puts "Ok. Ready to get abducted?"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_for_abduct_second = gets.chomp
      if height_for_abduct_second >= "four foot seven" || "five foot" || "five foot three"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. The aliens can't abduct you today."
      end
    else
      puts "Ok. Tunnel of death it is."
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_for_tunnel_second = gets.chomp
      if height_for_tunnel_second >= "five foot two" || "five foot five" || "five foot seven"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. No doom for you."
      end
    end
  elsif ride == "c"
    puts "Ok. Ready to get abducted?"
    puts "What's your height? Please input it like so: five feet is 'five foot'"
    puts "Input 'five foot two' if you're five foot five"
    height_abduct = gets.chomp
    if height_abduct >= "four foot seven" || "five foot" || "five foot three"
      puts "Ok! You can go on the ride."
    else
      puts "Sorry. The aliens can't abduct you today."
    end
    puts "Would you like to check out another ride? We have the following rides available:"
    puts "a. Twister Twizzlers"
    puts "b. Cupcake ride"
    puts "d. The tunnel of death"
    the_third = gets.chomp
    if the_third == "a"
      puts "Ok. Let's go on the Twizzler's ride!"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_twizzler_third = gets.chomp
      if height_twizzler_third >= "five foot two" || "five foot four" || "five foot six"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. You're not ready for the twisting twizzlers yet."
      end
    elsif the_third == "b"
      puts "Ok. Let's go on the cupcake ride!"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_cup_three = gets.chomp
      if height_cup_three >= "four foot" || "four foot three" || "four foot eight"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. No cupcakes for you!"
      end
    else
      puts "Ok. Tunnel of death it is."
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_for_tunnel_third = gets.chomp
      if height_for_tunnel_third >= "five foot two" || "five foot five" || "five foot seven"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. No doom for you."
      end
    end
  else
    puts "Ok. Tunnel of death it is."
    puts "What's your height? Please input it like so: five feet is 'five foot'"
    puts "Input 'five foot two' if you're five foot five"
    height_tunnel = gets.chomp
    if height_tunnel >= "five foot two" || "five foot five" || "five foot seven"
      puts "Ok! You can go on the ride."
    else
      puts "Sorry. No doom for you."
    end
    puts "Would you like to check out another ride? We have the following rides available:"
    puts "a. Twister Twizzlers"
    puts "b. Cupcake ride"
    puts "c. Alien abduction"
    the_fourth = gets.chomp
    if the_fourth == "a"
      puts "Ok. Let's go on the Twizzler's ride!"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_twizzler_four = gets.chomp
      if height_twizzler_four >= "five foot two" || "five foot four" || "five foot six"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. You're not ready for the twisting twizzlers yet."
      end
    elsif the_fourth == "b"
      puts "Ok. Let's go on the cupcake ride!"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_cup_fourth = gets.chomp
      if height_cup_fourth >= "four foot" || "four foot three" || "four foot eight"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. No cupcakes for you!"
      end
    else
      puts "Ok. Ready to get abducted?"
      puts "What's your height? Please input it like so: five feet is 'five foot'"
      puts "Input 'five foot two' if you're five foot five"
      height_for_abduct_fourth = gets.chomp
      if height_for_abduct_fourth >= "four foot seven" || "five foot" || "five foot three"
        puts "Ok! You can go on the ride."
      else
        puts "Sorry. The aliens can't abduct you today."
      end
    end
  end
end
def final_question
  puts height_time
  puts new_rides
end
#this is for the door game
def rand_int
  r = Random.new
  r.rand(1...3)
end
def door_one
  one = 1
  puts "||||||"
  puts "||\|/||"
  puts "||/|\||"
  puts "||||||"
  if rand_int == one
    puts "Congratulations! You were correct."
  else
    puts "Nope. You entered the wrong door and were bitten by a snake."
  end
end
def door_two
  two = 2
  puts "        |||||||"
  puts "        |||||||"
  puts "        |||||||"
  puts "        |||||||"
  if rand_int == two
    puts "Congratulations! You were correct."
  else
    puts "Nope. You entered the wrong door and were bitten by a snake."
  end
end
def door_three
  three = 3
  puts "                ||||||"
  puts "                ||\|/||"
  puts "                ||/|\||"
  puts "                ||||||"
  if rand_int == three
    puts "Congratulations! You were correct."
  else
    puts "Nope. You entered the wrong door and were bitten by a snake."
  end
end
def final_answer
  puts "Hello! Which door would you like to choose: 'one', 'two', or 'three'?"
  num = gets.chomp
  if num == "one"
    door_one
  elsif num == "two"
    door_two
  else
    door_three
  end
end
def all_of_code
  puts "Ok! What would you like to do?"
  puts "a. Check out safety"
  puts "b. Go on a ride"
  puts "c. Play the door game"
  the_answer_now = gets.chomp
  if the_answer_now == "a"
    main_safety
  elsif the_answer_now == "b"
    final_question
  else
    final_answer
  end
end
def beginning
  puts "Welcome to the Arcade! Choose from the following list:"
  puts "------------------------------------------------------"
  puts "1.) Fortune Telling Games"
  puts "2.) Story Games"
  puts "3.) Puzzle Games"
  puts "4.) Rides"
  mainChoice = gets.chomp
  if mainChoice == "1"
    puts "Do you want to play Fortune Teller (1) or Magic 8 Ball (2)"
    numGameC = gets.chomp
    if numGameC == "1"
      playGame
    else
      gamerGirlxD
    end
  elsif mainChoice == "2"

  story_games
    story_games
  elsif mainChoice == "3"
    puzzle_games
  elsif mainChoice == "4"
    all_of_code
  else 
    puts "You did not enter in a correct number"
  end
end

