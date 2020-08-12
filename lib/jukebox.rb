require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  songs.each do |song|
    if song.include?(song_choice) || song_choice == songs[song]
      puts "Playing #{song}"
    end
  end
end


def run (songs)
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == 'help'
    help
  elsif user_input == 'list'
    list (songs)
  end
end
