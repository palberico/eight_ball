require 'colorize'
require 'pry'


answer1 = 'Not Likely.'.red
answer2 = 'Yep!'.green
answer3 = 'Why are you asking me?'.yellow
answer4 = 'Yeeeeessss!'.green
answer5 = 'Ask me again when Im not drunk!'.green
answer6 = 'Let me roll over and ask your mom!'.green
answer7 = 'To know the future, say yes to knowledge (Y).'.magenta

@answers = [answer1, answer2, answer3, answer4, answer5, answer6, answer7]

def random_answer
  @answers.sample
end

def easter
  @answers + 'And now you have found all my secrets'
  puts
  puts 'Would you like to continue with your question?'
end

def sass
  puts
  puts 'I know the future...do you know the answer?'
  easter1 = STDIN.gets.strip
    puts @easter
    sass_cont

end

def sass_cont
  puts 'Please deposit $.25 or just press ENTER.'.green
  extra_enter = STDIN.gets.strip
  puts 'No seriously....I need some cash...I just dropped 10k...ok...fine...hit ENTER and you will get your answer!'
  extra_enter = STDIN.gets.strip
  puts random_answer
  puts
end

def easter
  puts @answers
end

def eightball
    puts
    puts '---Magic Eight Ball---'
    puts 'Type your question to begin, or QUIT to leave.'
    question = STDIN.gets.strip.to_s
    case question
    when ""
      puts 'Seriously, ask me anything'.yellow
      eightball
    when question = "QUIT", "Q", "quit", "q"
      puts 'Thanks for nothing!'.red
      exit
    else
      puts sass
      eightball
    end
end
eightball
