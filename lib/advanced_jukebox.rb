#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
  end


  def list(my_songs)
    my_songs.each do |key,value|
      puts "#{key}"
    end
  end

  def play(my_songs)

    puts "Please enter a song name or number:"
    response = gets.chomp

    if my_songs.include?(response)
      path = my_songs[response]
      system "open #{path}"
    else
      puts "Invalid input, please try again"
    end
  end


  def exit_jukebox
    puts "Goodbye"
  end

  def run(my_songs)

    help
    puts "Please enter a command:"
    command = gets.chomp
    loop do
        if command == "help"
          help
          puts "Please enter a command:"
          command = gets.chomp
        elsif command == "list"
          list(my_songs)
          puts "Please enter a command:"
          command = gets.chomp
        elsif command == "play"
          play(my_songs)
          puts "Please enter a command:"
          command = gets.chomp
        elsif command == "exit"
          exit_jukebox
          break
        end
      end
    end
  end
end
