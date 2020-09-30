class User < ActiveRecord::Base
    has_many :favorite_films
    has_many :films, through: :favorite_films
    
    def self.user_login
        prompt = TTY::Prompt.new
        user_input = prompt.ask('What is your name?')
        @existing_user = all.find_by(name: user_input)

        if @existing_user
            system("clear")
            puts 'Welcome back!'.yellow
            # @existing_user.user_menu
        else
            puts 'Sorry, you need to sign up!'
        end
    end
end