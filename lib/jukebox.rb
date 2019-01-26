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

# def say_hello(name)
  # "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each do |element|
    puts "#{songs.index(element)+1}. #{element}"
  end
end


def play(songs)
  puts "Enter your song of choice:"
  input = gets.downcase.chomp
    songs.each do |element|
      if songs.index(element)+1 == input.to_i
        puts "Now Playing: #{element}"
        elsif element.downcase == input
          puts "Now Playing: #{element}"
          else
            puts "Invalid input, please try again"
          end
        end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  case input
    when "list"
      list(songs)
    when "play"
      list(songs)
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      help
    end
end
