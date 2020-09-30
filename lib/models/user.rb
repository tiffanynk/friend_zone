require "pry"

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
            @existing_user.user_menu
        else
            puts 'Sorry, you need to sign up!'
        end
    end

    def user_menu
        prompt = TTY::Prompt.new(symbols: {marker:'♥︎'.magenta})
        user_selection = {
            'User Profile' => 1,
            'See Top 10 Films' => 2,
            'See All Films' => 3,
            'Select Favorites' => 4,
            'See My Favorites' => 5,
            'Update Favorites' => 6
        }
        
        new_menu = prompt.select('Select an option.'.light_blue, user_selection)
    
        # ALTERNATIVE TO NESTING IN SEVERAL ELSEIFS
        case new_menu
        when 1
            puts "1"
            # USER CARD
        when 2
            puts "2"
            # METHOD FOR TOP 10 FILMS
        when 3
            puts "3"
            # METHOD FOR ALL FILMS
        when 4
            puts "4"
            # METHOD FOR SELECTING FAVORITES
        when 5
            puts "5"
            # METHOD FOR SEEING FAVORITES
        when 6
            puts "6"
            # METHOD FOR UPDATING FAVORITES
        end
    end

end