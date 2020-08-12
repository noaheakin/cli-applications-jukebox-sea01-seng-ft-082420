require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  i = 0
  while i < songs.length do
    puts songs[i] = i. songs[i]
    i += 1
  end
end
binding.pry
def run (songs)
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == 'help'
    help
  elsif user_input == 'list'
    list (songs)
  end
end
