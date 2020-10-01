class Film < ActiveRecord::Base
    has_many :favorite_films
    has_many :users, through: :favorite_films

    #we should probably move this to film.rb
    # def self.top_ten_films
    #     #sorts by rt score and returns only 10 films
    #     self.order(rt_score: :desc).limit(10).pluck(:title)
    # end
    # binding.pry
end