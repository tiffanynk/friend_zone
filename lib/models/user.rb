require "pry"

class User < ActiveRecord::Base
    has_many :favorite_films
    has_many :films, through: :favorite_films
    
    def self.user_login
        prompt = TTY::Prompt.new
        user_input = prompt.ask('What is your name?')
        @@existing_user = all.find_by(name: user_input)

        if @@existing_user
            puts 'Welcome back!'.yellow
            @@existing_user.user_menu
        else
            puts 'Sorry, you need to sign up!'
        end
    end

    def user_menu
        Ascii.totoro
        prompt = TTY::Prompt.new(symbols: {marker:'♥︎'.magenta})
        user_selection = {
            'User Profile' => 1,
            'See Top 10 Films' => 2,
            'See All Films' => 3,
            'Select Favorites' => 4,
            'See My Favorites' => 5,
            'Update My Favorites' => 6,
            'Match with a Friend' => 7,
            'Exit' => 8
        }
        
        new_menu = prompt.select('Select an option.'.light_blue, user_selection)
    
        # ALTERNATIVE TO NESTING IN SEVERAL ELSEIFS
        case new_menu
        when 1
            # USER CARD
            user_info
        when 2
            # TOP 10 BASED ON RT
            Film.top_ten_films
        when 3
            # METHOD FOR ALL FILMS
            Film.all_film_menu
        when 4
            puts "4"
            # METHOD FOR SELECTING FAVORITES
        when 5
            puts "5"
            # METHOD FOR SEEING FAVORITES
        when 6
            puts "6"
            # METHOD FOR UPDATING FAVORITES
        when 7
            puts "Coming soon!"
        when 8
            puts "6Coming soon!"
        end
        # binding.pry
    end

    def user_info
        puts "Name: ".yellow + "#{@@existing_user.name}"
        puts "Age: ".yellow + "#{@@existing_user.age}"
        puts "Location: ".yellow + "#{@@existing_user.location}"
        puts "Favorite Quote: ".yellow + "#{@@existing_user.favorite_quote}"
    end

end