require 'pry'
class Film < ActiveRecord::Base
    has_many :favorite_film
    has_many :users, through: :favorite_film

    #sorts by rt score and returns only 10 films in an ordered list
    def self.top_ten_films
        list = order(rt_score: :desc).limit(10).pluck(:title)
        list.each_with_index {|film, index| puts "#{index + 1}:".yellow + "#{film}"}
    end
    
    #Gives a list of films
    def self.list_of_films
        all_films = all.map {|film| film.title}
    end

    def self.all_film_menu(user)
        prompt = TTY::Prompt.new(symbols: {marker:'♥︎'.magenta})
        film_choice = list_of_films.sort
        film_selection = prompt.select('Pick a movie to see more info!'.light_blue, film_choice)
        @@found_film = all.find_by(title: film_selection)
        @@found_film.display_film_info

        favorite_options(user)
    end    

    def display_film_info
        puts "Title: ".yellow + "#{@@found_film.title}"
        puts "Description: ".yellow + "#{@@found_film.description}"
        puts "Director: ".yellow + "#{@@found_film.director}"
        puts "Producer: ".yellow + "#{@@found_film.producer}"
        puts "Release Date: ".yellow + "#{@@found_film.release_date}"
        puts "Rotten Tomato Score: ".yellow + "#{@@found_film.rt_score}"
    end

    def self.favorite_options(user)
        prompt = TTY::Prompt.new(symbols: {marker:'♥︎'.magenta})
        user_choice = {
            'Add to Favorites': 1,
            'Remove from Favorites': 2,
            'Update Favorites': 3,
            'Main Menu': 4
        }
        
        new_menu = prompt.select('Select an option.'.light_blue, user_choice)
    
        # REVISIT.
        case new_menu
        when 1
            # FAVORITE THIS FILM
            @@found_film.add_favorite_film(user)
            return
        when 2
            # OPTION TO REMOVE CURRENTLY FAVORITED FILM
            puts "Coming soon!"
        when 3
            # OPTION TO UPDATE FAVORITES FILMS
            puts "Coming soon!"
        when 4
            puts 'You are back home!'
            return
        end
        user.user_menu
    end
    
    def add_favorite_film(user)
        FavoriteFilm.create(user: user, film: self)
        puts 'You added a movie to your to your Favorites.'
    end
    
    # binding.pry

end