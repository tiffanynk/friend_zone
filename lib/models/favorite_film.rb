class FavoriteFilm < ActiveRecord::Base
    belongs_to :user
    belongs_to :favorite_film
end