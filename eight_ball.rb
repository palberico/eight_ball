require 'colorize'
require 'pry'


answer1 = 'Not Likely.'.red
answer2 = 'Yep!'.green
answer3 = 'Why are you asking me?'.yellow
answer4 = 'Yeeeeessss!'.green
answer5 = 'Ask me again when Im not drunk!'.green
answer6 = 'Let me roll over and ask your mom!'.green

@answers = [answer1, answer2, answer3, answer4, answer5, answer6]

def random_answer
  @answers.sample
end

def sass
  puts
  puts 'I see the future...press ENTER to hear it.'
  extra_enter = STDIN.gets.strip
  puts 'Please deposit $.25...or just press ENTER.'.green
  extra_enter = STDIN.gets.strip
  puts 'No seriously....I need some cash...I just dropped 10k. OK...fine...hit ENTER and you will get your answer!'
  extra_enter = STDIN.gets.strip
  puts
  puts 'YOUR ANSWER:'
  puts random_answer
  puts
end

def eightball
    puts '---Magic Eight Ball---'.magenta
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
