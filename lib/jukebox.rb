# Add your code here
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

def list(songs)
  songs.each_with_index {|song, i| puts (i + 1).to_s + ". #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i <= songs.length && input.to_i > 0 
    song_name = songs[input.to_i - 1]
    puts "Playing #{song_name}"
  elsif songs.include? input
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  i = 0 
  while i = 0
    puts "Please enter a command:"
    input = gets.strip
    if input == "help"
      help 
    elsif input == "exit"
      exit_jukebox
      i += 1
      break
    elsif input == "play" 
      play(songs)
    elsif input == "list" 
      list(songs)
    end
  end
end