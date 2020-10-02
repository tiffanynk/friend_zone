require "pry"

class User < ActiveRecord::Base
    has_many :favorite_film
    has_many :films, through: :favorite_film
    
    def self.user_login
        Ascii.totoro
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
        prompt = TTY::Prompt.new(symbols: {marker:'♥︎'.magenta})
        user_selection = {
            'User Profile': 1,
            'See Top 10 Films': 2,
            'See All Films': 3,
            'See My Favorites': 4,
            'Match with a Friend': 5,
            'Exit': 6
        }
        
        new_menu = prompt.select('Select an option.'.light_blue, user_selection)
    
        # ALTERNATIVE TO NESTING IN SEVERAL ELSEIFS
        case new_menu
        when 1
            # USER PROFILE
            user_info
        when 2
            # TOP 10 BASED ON RT
            Film.top_ten_films
        when 3
            # LISTS ALL FILMS
            Film.all_film_menu(@@existing_user)
        when 4
            # LISTS FAVORITE FILMS
            list_favorite_films(@@existing_user)
        when 5
            # MATCH WITH A FRIEND
            puts "Coming soon!"
        when 6
            puts "Bye now!"
            return
        end
        user_menu
    end

    def user_info
        puts "Name: ".yellow + "#{@@existing_user.name}"
        puts "Age: ".yellow + "#{@@existing_user.age}"
        puts "Location: ".yellow + "#{@@existing_user.location}"
        puts "Favorite Quote: ".yellow + "#{@@existing_user.favorite_quote}"
    end

    def list_favorite_films(user)
        #rewrite to make the list in new lines
            puts user.films.map(&:title).join(', ')

    end
    # binding.pry
end