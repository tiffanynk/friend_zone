require "pry"

class FriendZone
    attr_reader :user

    def initialize
        @prompt = TTY::Prompt.new(symbols: {marker:'♥︎'.magenta})
        @user = nil
    end

    #This runs the program and brings the user to a main menu
    def welcome_screen
       Ascii.logo
       #come back and see if we can make two lines
       welcome = @prompt.select('Welcome to Friend Zone! Meet new people who love Studio Ghibli Films too!'.light_blue) do |menu|
        menu.choice 'Log in' 
        menu.choice 'Sign up'
        menu.choice 'Exit'
       end

       #when user makes a selection, it will take them to any of these options
       if welcome == 'Log in'
        User.user_login
       elsif welcome == 'Sign up'
        user_name = @prompt.ask('What is your name?', required: true) do |input|
            input.modify :strip
        end
        user_age = @prompt.ask('How old are you?', required: true)
        user_location = @prompt.ask('Which neighborhood do you live in?', required: true)
        user_quote = @prompt.ask('What\'s your favorite quote?', required: true)
        @user = User.create(name: user_name, age: user_age, location: user_location, favorite_quote: user_quote)
       else
           'Bye now!'
       end
    end

end


# binding.pry
# 0