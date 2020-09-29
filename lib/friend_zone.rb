class FriendZone
    attr_reader :user

    def welcome
        system("clear")
        puts 'Hello! Welcome to Friend Zone!'.yellow
        #sleep pauses code for x amount of seconds
        sleep(1.0)
        puts 'What is your name?'.green
        user = gets.chomp()
        provide_password()
    end
   
    def provide_password
        system("clear")
        puts 'Whats your password?'.yellow
        #sleep pauses code for x amount of seconds
        sleep(1.0)
        password_input = gets.chomp()
        if password_input == "password"
            puts "Welcome!"
        else
            puts "Try again"
            sleep(1.0)
            provide_password
        end
        

    end

    #login or signup
    #see favorites
    #add favorites
    #update favorites
end
