class FriendZone
    attr_reader :user

    def welcome
        system("clear")
        puts 'Hello! Welcome to Friend Zone!'.yellow
        #sleep pauses code for x amount of seconds
        sleep(1.0)
        puts 'What is your name?'.green
        user = gets.chomp()
    end
    
    #login or signup
    #see favorites
    #add favorites
    #update favorites
end
