require 'pry'
class Film < ActiveRecord::Base
    has_many :favorite_films
    has_many :users, through: :favorite_films

    #sorts by rt score and returns only 10 films in an ordered list
    def self.top_ten_films
        list = self.order(rt_score: :desc).limit(10).pluck(:title)
        list.each_with_index {|film, index| puts "#{index + 1}:".yellow + "#{film}"}
    end
    
    #Gives a list of films
    def self.list_of_films
        all_films = all.map do |film|
            film.title
        end
    end

    def self.all_film_menu
        Ascii.totoro
        prompt = TTY::Prompt.new(symbols: {marker:'♥︎'.magenta})
        film_choice = list_of_films.sort
        film_selection = prompt.select('Pick a movie to see more info!'.light_blue, film_choice)
        @@found_film = all.find_by(title: film_selection)
        puts "Title: ".yellow + "#{@@found_film.title}"
        puts "Description: ".yellow + "#{@@found_film.description}"
        puts "Director: ".yellow + "#{@@found_film.director}"
        puts "Producer: ".yellow + "#{@@found_film.producer}"
        puts "Release Date: ".yellow + "#{@@found_film.release_date}"
        puts "Rotten Tomato Score: ".yellow + "#{@@found_film.rt_score}"
    end    
    
    # def film_info
    #     puts "Title: ".yellow + "#{@@found_film.title}"
    #     puts "Description: ".yellow + "#{@@found_film.description}"
    #     puts "Director: ".yellow + "#{@@found_film.director}"
    #     puts "Producer: ".yellow + "#{@@found_film.producer}"
    #     puts "Release Date: ".yellow + "#{@@found_film.release_date}"
    #     puts "Rotten Tomato Score: ".yellow + "#{@@found_film.rt_score}"
    # end
    # binding.pry
end